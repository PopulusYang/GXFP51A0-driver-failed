#!/usr/bin/env python3
"""
Goodix GF3658/GXFP51A0 Fingerprint Sensor — Linux SPI Driver Prototype

Phase 5: Direct MCU communication via SPI, based on:
  - ARM firmware reverse engineering (Phases 1-4)
  - IHA protocol packet format from JHI64.dll decompilation
  - STM32F4 Flash programming protocol
  - Intel DAL Developer Guide

SPI config: Mode 0, 10 MHz, 4-wire
MCU flash base: 0x08000000, RAM base: 0x20000000
GPIO 36: MCU reset (active low, 100ms pulse)

Usage: sudo python3 goodix_spi_driver.py [command]
Commands: reset, ping, version, flash_status, info
"""

import spidev
import struct
import time
import os
import sys
import subprocess

SPIDEV = "/dev/spidev1.0"
GPIO_RESET = 36

# ─── SPI Packet Protocol (from IHA/JHI reverse engineering) ───

def be16(v):
    """16-bit big-endian (network byte order as used by IHA protocol)"""
    return struct.pack('>H', v & 0xFFFF)

def be32(v):
    return struct.pack('>I', v & 0xFFFFFFFF)

def le32(v):
    """32-bit little-endian (for Flash addresses, etc.)"""
    return struct.pack('<I', v & 0xFFFFFFFF)

def build_iha_packet(cmd_type, operation, mode=0, send_data=b'', resp_buf_size=0x0100):
    """
    Build an IHA protocol command packet.

    Packet format (big-endian):
      Offset  Size  Field
      0x00    4     Magic (0x00010000)
      0x04    2     Command (0x19=SendRecv, 0x07=Send, 0x09=Recv, 0x15=SendV2, 0x17=RecvV2)
      0x06    2     Total length (excluding first 6 bytes)
      0x08    4     Operation/type identifier
      0x0C    2     Mode/flags
      0x0E    2     Expected response size
      0x10    2     Send data size
      0x12    N     Send data (if any)
    """
    send_len = len(send_data)
    header_size = 0x12 + send_len
    if send_len == 0:
        header_size = 0x13  # No data: 19 bytes minimum

    packet = b''
    packet += be32(0x00010000)           # Magic
    packet += be16(cmd_type)              # Command type
    packet += be16(header_size - 8)       # Total length
    packet += be32(operation)             # Operation ID
    packet += be16(mode)                  # Mode/flags
    packet += be16(resp_buf_size)         # Response buffer size
    packet += be16(send_len)              # Data size
    if send_len > 0:
        packet += send_data
    return packet

def parse_iha_response(data):
    """
    Parse IHA protocol response packet.

    Response format (big-endian):
      Offset  Size  Field
      0x00    4     Status code (0=success)
      0x04    2     Response data size
      0x06    2     (padding/reserved)
      0x08    4     Operation-specific data
      0x0C    2     (various)
      0x0E    N     Response data
    """
    if len(data) < 8:
        return None
    status = struct.unpack('>I', data[0:4])[0]
    resp_size = struct.unpack('>H', data[4:6])[0]
    resp_data = data[14:14+resp_size] if len(data) >= 14+resp_size else b''
    return {
        'status': status,
        'size': resp_size,
        'data': resp_data
    }

# ─── GPIO Control ───

def mcu_reset():
    """Toggle GPIO 36 to reset the MCU (100ms low pulse)."""
    try:
        import gpiod
        from gpiod.line import Direction, Value

        chip = gpiod.Chip('/dev/gpiochip0')
        lr = chip.request_lines(
            config={GPIO_RESET: gpiod.LineSettings(
                direction=Direction.OUTPUT, output_value=Value.ACTIVE
            )},
            consumer="goodix-fp"
        )
        lr.set_value(GPIO_RESET, Value.INACTIVE)
        time.sleep(0.1)
        lr.set_value(GPIO_RESET, Value.ACTIVE)
        time.sleep(0.5)  # MCU boot time
        lr.release()
        chip.close()
        print(f"[GPIO] MCU reset complete (GPIO {GPIO_RESET}, 100ms pulse)")
        return True
    except Exception as e:
        print(f"[GPIO] Reset failed: {e}")
        return False

# ─── SPI Transport ───

class GoodixSPI:
    """SPI transport layer for Goodix fingerprint sensor."""

    def __init__(self):
        self.spi = None

    def open(self):
        """Open SPI device."""
        if not os.path.exists(SPIDEV):
            print(f"ERROR: {SPIDEV} not found")
            print("Bind with: sudo sh -c 'echo spidev > /sys/bus/spi/devices/spi-GXFP51A0:00/driver_override && echo spi-GXFP51A0:00 > /sys/bus/spi/drivers/spidev/bind'")
            return False

        self.spi = spidev.SpiDev()
        self.spi.open(1, 0)
        self.spi.mode = 0
        self.spi.max_speed_hz = 10000000  # 10 MHz from ACPI
        self.spi.bits_per_word = 8
        print(f"[SPI] Opened {SPIDEV} (mode=0, 10MHz)")
        return True

    def close(self):
        if self.spi:
            self.spi.close()

    def check_miso(self):
        """Check MISO line state."""
        rx = bytes(self.spi.xfer2([0x00]*8))
        all_ff = all(b == 0xFF for b in rx)
        all_00 = all(b == 0x00 for b in rx)
        return 'ff' if all_ff else ('00' if all_00 else 'active')

    def send_raw(self, data, read_len=256):
        """Send raw data and read response."""
        tx = list(data) + [0x00] * read_len
        rx = bytes(self.spi.xfer2(tx))
        return rx

    def send_command(self, cmd_type, operation, mode=0, data=b''):
        """Send IHA command and parse response."""
        packet = build_iha_packet(cmd_type, operation, mode, data)
        print(f"  TX ({len(packet)}B): {packet.hex()}")
        rx = self.send_raw(packet, 256)

        # Show first bytes of response
        first_words = ' '.join(f'{rx[i]:02x}' for i in range(0, min(32, len(rx))))
        print(f"  RX (first 32B): {first_words}")

        non_ff = sum(1 for b in rx if b != 0xFF)
        non_00 = sum(1 for b in rx if b != 0x00)
        interesting = [f"[{i}]={rx[i]:02x}" for i in range(len(rx))
                       if rx[i] not in (0x00, 0xFF)]

        result = {
            'raw': rx,
            'non_ff': non_ff,
            'non_00': non_00,
            'interesting': interesting,
            'all_ff': non_ff == 0,
        }

        if non_ff > 0 and non_00 > 0:
            parsed = parse_iha_response(rx)
            if parsed:
                result['parsed'] = parsed
                if parsed['status'] == 0:
                    print(f"  *** SUCCESS: status=0, data={parsed['data'][:32].hex()}")
                else:
                    print(f"  Status: 0x{parsed['status']:08x}, size={parsed['size']}")

        return result

# ─── Flash Commands (from ARM firmware reverse engineering) ───

class FlashCommands:
    """
    MCU Flash operations based on STM32F4 Flash controller (0x40023C00).

    Flash command dispatch (from mod_02):
      byte[0] = 'H' (0x48) or 'I' (0x49) — command class
      byte[1] = command number:
        1 = read
        2 = write/program (with callback)
        3 = flash read
        4 = flash write
        5 = flash erase
        6 = flash verify
        7 = flash protect
        9 = flash status

    Flash unlock keys (STM32 standard):
      KEY1 = 0x45670123
      KEY2 = 0xCDEF89AB
    """

    CMD_CLASS_H = 0x48
    CMD_CLASS_I = 0x49

    CMD_READ   = 3
    CMD_WRITE  = 4
    CMD_ERASE  = 5
    CMD_VERIFY = 6
    CMD_PROTECT = 7
    CMD_STATUS = 9

    @staticmethod
    def build_cmd(command_num, address=0, data=b'', callback=0):
        """Build a Flash operation command packet."""
        # Flash command structure (from mod_02 dispatcher analysis)
        cmd = bytearray()
        cmd.append(FlashCommands.CMD_CLASS_H)  # byte[0] = 'H'
        cmd.append(command_num)                # byte[1] = command
        cmd.extend(le32(address))              # bytes[2-5] = address
        cmd.extend(le32(len(data)))            # bytes[6-9] = size
        cmd.extend(le32(callback))             # bytes[10-13] = callback
        cmd.extend(data)                       # data payload
        return bytes(cmd)

# ─── High-Level Commands ───

def cmd_ping(spi):
    """Send a ping-like command to check MCU responsiveness."""
    print("\n=== PING ===")

    # Try various IHA command types
    for cmd_type, name in [(0x19, "SendAndRecv"), (0x07, "SendOnly"), (0x09, "RecvOnly")]:
        print(f"\n  {name} (0x{cmd_type:02x}):")
        for op in [0, 1, 2]:
            result = spi.send_command(cmd_type, op)
            if not result['all_ff']:
                print(f"  *** Device is driving MISO (non-0xFF={result['non_ff']}) ***")
                break
            time.sleep(0.005)
        if not result.get('all_ff', True):
            break

def cmd_flash_status(spi):
    """Query Flash status (command 9)."""
    print("\n=== FLASH STATUS ===")
    flash_cmd = FlashCommands.build_cmd(FlashCommands.CMD_STATUS)
    spi.send_command(0x19, 0, mode=0, data=flash_cmd)

def cmd_info(spi):
    """Try to get device information."""
    print("\n=== DEVICE INFO ===")

    # Try get version (operation=0 should return version from IHA_GetVersion)
    for op in [0, 1, 0x100, 0x1000]:
        print(f"\n  Operation 0x{op:04x}:")
        result = spi.send_command(0x19, op)
        if result.get('parsed'):
            parsed = result['parsed']
            if parsed['status'] == 0 and parsed['data']:
                print(f"  Version data: {parsed['data'].hex()}")

# ─── Main ───

def main():
    print("=" * 60)
    print("Goodix GF3658 Fingerprint Sensor — Linux SPI Driver")
    print("=" * 60)

    cmd = sys.argv[1] if len(sys.argv) > 1 else 'info'

    # Step 1: Reset MCU
    print("\n[1] Resetting MCU...")
    mcu_reset()

    # Step 2: Open SPI
    print("\n[2] Opening SPI...")
    spi = GoodixSPI()
    if not spi.open():
        return 1

    # Step 3: Check MISO state
    print("\n[3] Checking MISO state...")
    miso = spi.check_miso()
    print(f"  MISO: all 0x{miso}")
    if miso == 'ff':
        print("  MCU not driving MISO (may need firmware loaded)")

    # Step 4: Execute command
    print(f"\n[4] Running command: {cmd}")
    if cmd == 'reset':
        mcu_reset()
        print("Done.")
    elif cmd == 'ping':
        cmd_ping(spi)
    elif cmd == 'flash_status':
        cmd_flash_status(spi)
    elif cmd == 'info':
        cmd_info(spi)
    elif cmd == 'full_test':
        cmd_ping(spi)
        time.sleep(0.1)
        cmd_flash_status(spi)
        time.sleep(0.1)
        cmd_info(spi)
    else:
        print(f"Unknown command: {cmd}")
        print("Commands: reset, ping, flash_status, info, full_test")

    spi.close()
    print("\nDone.")
    return 0

if __name__ == '__main__':
    sys.exit(main())
