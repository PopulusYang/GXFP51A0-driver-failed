#!/usr/bin/env python3
"""
Goodix GXFP51A0 Fingerprint Sensor — Linux SPI Driver Prototype

MCU:  Goodix GR5515IGND (Cortex-M4F, 256KB RAM, 1MB Flash)
SPI:  Mode 0, up to 10 MHz, bus 1 CS 0 (/dev/spidev1.0)
GPIO: Reset candidates: 36, 264, 311 (INT34BB:00, 312 pins)

Three protocol layers discovered:
  1. IHA (Intel Host Abstraction) — magic 0x00010000 BE, used by iha64.dll
  2. Community SPI — magic 0xccf2, from goodix-fp-dump project
  3. GR5515 DFU — magic 0x4744 ('GD') LE, Goodix official DFU

Usage: sudo python3 goodix_spi_driver.py [command]
Commands: ping, gr5515, community, full_test
"""

import spidev
import struct
import time
import os
import sys

SPIDEV = "/dev/spidev1.0"

# ─── IHA Protocol (magic 0x00010000, Big-Endian) ───

def be16(v): return struct.pack('>H', v & 0xFFFF)
def be32(v): return struct.pack('>I', v & 0xFFFFFFFF)

def iha_cmd(cmd_type, operation, mode=0, data=b''):
    send_len = len(data)
    hdr = 0x12 + send_len if send_len > 0 else 0x13
    pkt = b''
    pkt += be32(0x00010000)       # Magic
    pkt += be16(cmd_type)          # 0x19=SendRecv 0x07=Send 0x09=Recv
    pkt += be16(hdr - 8)
    pkt += be32(operation)
    pkt += be16(mode)
    pkt += be16(0x0100)
    pkt += be16(send_len)
    if send_len > 0: pkt += data
    return pkt

# ─── Community SPI Protocol (magic 0xccf2 + 0xa0 + 0xae) ───

def community_cmd(command, payload=b''):
    """Frame: cc f2 [seq] 82 — a0 [len] [cksum] — ae [len] [data] [cksum] — 00 00"""
    plen = len(payload)
    packet = bytes([0xae, plen & 0xFF, (plen >> 8) & 0xFF]) + payload
    packet += bytes([(-sum(packet)) & 0xFF])

    dpack = bytes([0xa0, len(packet) & 0xFF, (len(packet) >> 8) & 0xFF])
    dpack += bytes([(-sum(dpack)) & 0xFF])

    frame = bytes([0xcc, 0xf2, 0x00, 0x82])  # seq=0
    eot = bytes([0x00, 0x00])

    return frame + dpack + packet + eot

def community_rtr():
    return bytes([0xbb, 0xf1, 0x00, 0x00])

# ─── GR5515 DFU Protocol (magic 0x4744 'GD', Little-Endian) ───

def le16(v): return struct.pack('<H', v & 0xFFFF)

def gr5515_dfu_cmd(cmd_code, payload=b''):
    """Frame: 47 44 [type LE] [len LE] [data] [cksum LE]"""
    csum_data = le16(cmd_code) + le16(len(payload)) + payload
    cksum = le16(sum(csum_data) & 0xFFFF)
    return b'\x47\x44' + csum_data + cksum

# GR5515 DFU commands
GR5515_CMD_PROGRAM_START      = 0x0023
GR5515_CMD_PROGRAM_FLASH      = 0x0024
GR5515_CMD_PROGRAM_END        = 0x0025
GR5515_CMD_CONFIG_EXT_FLASH   = 0x002A
GR5515_CMD_GET_FLASH_INFO     = 0x002B

# Community commands
COMMUNITY_CMD_ENABLE_CHIP     = 0x96
COMMUNITY_CMD_RESET           = 0xa2
COMMUNITY_CMD_MCU_ERASE_APP   = 0xa4
COMMUNITY_CMD_FIRMWARE_VERSION = 0xa8
COMMUNITY_CMD_QUERY_MCU_STATE = 0xae

# ─── SPI Transport ───

class GoodixSPI:
    def __init__(self):
        self.spi = None

    def open(self):
        if not os.path.exists(SPIDEV):
            print(f"ERROR: {SPIDEV} not found. Run spidev bind first.")
            return False
        self.spi = spidev.SpiDev()
        self.spi.open(1, 0)
        self.spi.mode = 0
        self.spi.max_speed_hz = 4000000
        print(f"[SPI] {SPIDEV} mode=0 4MHz")
        return True

    def close(self):
        if self.spi: self.spi.close()

    def xfer(self, data, read_len=256):
        rx = bytes(self.spi.xfer2(list(data) + [0x00] * read_len))
        nff = sum(1 for b in rx if b != 0xFF)
        nnz = sum(1 for b in rx if b != 0x00)
        return rx, nff, nnz

    def test_protocol(self, name, pkt, expected_magic=None):
        rx, nff, nnz = self.xfer(pkt)
        interesting = nff > 0 and nnz > 0
        magic_match = expected_magic and rx[:2] == expected_magic
        status = "*** RESPONSE!" if interesting else ("MAGIC MATCH!" if magic_match else "all 0xFF")
        if interesting or magic_match:
            print(f"  {name}: {status} RX={rx[:16].hex()}")
        else:
            print(f"  {name}: {status}")
        return interesting or magic_match

# ─── Main ───

def main():
    cmd = sys.argv[1] if len(sys.argv) > 1 else 'help'

    if cmd == 'help':
        print("Commands: ping, gr5515, community, full_test")
        return 0

    spi = GoodixSPI()
    if not spi.open(): return 1

    if cmd in ('ping', 'full_test'):
        print("\n=== IHA Protocol ===")
        for ct, cn in [(0x19, 'SendRecv'), (0x07, 'Send'), (0x09, 'Recv')]:
            for op in range(3):
                pkt = iha_cmd(ct, op)
                rx, nff, nnz = spi.xfer(pkt)
                if nff > 0 and nnz > 0:
                    print(f"  IHA {cn} op={op}: RX={rx[:16].hex()} ***")
                    break
                time.sleep(0.002)
            else:
                print(f"  IHA {cn}: all 0xFF")

    if cmd in ('gr5515', 'full_test'):
        print("\n=== GR5515 DFU Protocol ===")
        for name, ccode, payload in [
            ("GetFlashInfo", GR5515_CMD_GET_FLASH_INFO, b''),
            ("ProgramStart(ext)", GR5515_CMD_PROGRAM_START, b'\x01' + b'\x00'*40),
        ]:
            pkt = gr5515_dfu_cmd(ccode, payload)
            spi.test_protocol(f"GR5515 {name}", pkt, b'\x47\x44')

    if cmd in ('community', 'full_test'):
        print("\n=== Community SPI Protocol ===")
        for name, ccode in [
            ("QueryMCUState", COMMUNITY_CMD_QUERY_MCU_STATE),
            ("FirmwareVersion", COMMUNITY_CMD_FIRMWARE_VERSION),
            ("EnableChip", COMMUNITY_CMD_ENABLE_CHIP),
        ]:
            pkt = community_cmd(ccode)
            spi.test_protocol(f"Community {name}", pkt)

    spi.close()
    print("\nDone.")
    return 0

if __name__ == '__main__':
    sys.exit(main())
