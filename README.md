# Goodix GXFP51A0 Fingerprint Sensor — Reverse Engineering

Reverse engineering the Goodix GF3658 (GXFP51A0/GXFP51A7) fingerprint SPI sensor to develop a Linux driver, without Windows or a logic analyzer.

## Quick Start

```bash
# Bind sensor to spidev
sudo modprobe spidev
echo "spidev" | sudo tee /sys/bus/spi/devices/spi-GXFP51A0:00/driver_override
echo "spi-GXFP51A0:00" | sudo tee /sys/bus/spi/drivers/spidev/bind

# Call ACPI _INI to power on sensor (optional - may not help)
# make -C /lib/modules/$(uname -r)/build M=$PWD modules && sudo insmod gxfp51a0_drv.ko

# Test SPI
sudo python3 goodix_spi_driver.py info
# Currently: MCU returns all 0xFF — needs firmware loaded
```

## What We Know

- **MCU**: ARM Cortex-M4F, STM32F4/GD32F4 compatible, SPI2 slave
- **SPI**: Mode 0, 10 MHz, 4-wire
- **GPIO**: Reset on pin 36 (candidate), controller INT34BB:00
- **Firmware**: 196KB ARM code extracted from gfspi.dll `.rdata`
- **Protocol**: IHA packet format fully decoded
- **ACPI**: `\_SB_.PCI0.SPI1.FPNT`, HID `GXFP51A0`

## Architecture

```
Host (Linux)                               Sensor MCU
    │                                          │
    │  SPI Mode 0, 10 MHz                      │
    │  IHA Protocol Packets ──────────────────→│
    │  Magic: 0x00010000                       │
    │  Cmd: 0x19 (SendRecv)                    │
    └──────────────────────────────────────────┘
```

## Files

| File | Description |
|------|-------------|
| `Goodix_Fingerprint_Driver_Analysis.md` | Complete analysis (13 chapters) |
| `feasibility_report.md` | Development path analysis |
| `goodix_spi_driver.py` | Linux SPI driver prototype |
| `extracted_firmware/` | 196KB ARM firmware + disassembly |
| `iha64.dll` | Intel IHA protocol layer |
| `JHI64.dll` | Java Host Interface client |
| `dal.inf_amd64_.../` | Intel DAL service (jhi_service.exe) |
| `gfspi.inf_amd64_.../` | Original Goodix driver |
| `dynamic-application-loader_...pdf` | Intel DAL Developer Guide |

## Blocked On

MCU returns `0xFF` on all SPI transactions. Needs either:
- Logic analyzer capture of Windows SPI boot sequence
- JHI Service SPI transport implementation

## Tools

- `/dev/spidev1.0` — SPI communication
- `/dev/gpiochip0` — GPIO control  
- [Ghidra](https://github.com/NationalSecurityAgency/ghidra) 12.1.2 — x86-64 decompilation
- `arm-none-eabi-objdump` — ARM firmware disassembly

## Related

- [libfprint](https://gitlab.freedesktop.org/libfprint/libfprint)
- [Intel DAL Developer Guide](https://www.intel.com/content/www/us/en/docs/dynamic-application-loader/developer-guide/1-0/)
