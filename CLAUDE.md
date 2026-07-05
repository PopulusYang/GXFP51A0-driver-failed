# CLAUDE.md

## Project Overview

Reverse engineering the **Goodix GXFP51A0/GXFP51A7 Fingerprint SPI Sensor** to develop a Linux driver (libfprint). This is a static analysis project — no Windows, no logic analyzer.

## Hardware

```
Sensor:  Goodix GF3658 (GXFP51A0), Milan platform, Huawei MateBook 13 (WRTB)
MCU:     Goodix GR5515IGND (Cortex-M4F @ 64MHz, 256KB RAM, 1MB Flash, BLE 5.1)
SPI:     Mode 0, 10 MHz, 4-wire, bus 1 CS 0
GPIO:    Reset candidates 36/264/311, controller INT34BB:00 (312 pins)
ACPI:    \_SB_.PCI0.SPI1.FPNT, HID GXFP51A0
```

## Architecture

```
Host ↔ SPI ↔ GR5515 (SPI Slave, runs application firmware)
                │
                ├── ROM Bootloader (BLE DFU, not SPI)
                ├── Application Firmware (196KB ARM, extracted from gfspi.dll)
                └── SPI2 Peripheral → handles IHA protocol commands

Windows driver stack:
  gfspi.dll → iha64.dll → JHI64.dll → jhi_service.exe → SPI hardware
```

## Key Findings

| Area | Detail |
|------|--------|
| MCU | Goodix GR5515IGND, not STM32 |
| ROM Bootloader | BLE DFU only — NO SPI/UART support for blank chip |
| Firmware | 196KB ARM Cortex-M4F embedded in gfspi.dll .rdata |
| SPI Protocol | IHA (0x00010000 magic) and GR5515 DFU (0x4744 magic) both tested |
| Factory programming | J-Link/SWD only, GProgrammer tool available |
| Community | goodix-fp-linux-dev/goodix-fp-dump, egormanga/goodix-spi-protocol |

## Core Problem

MCU returns 0xFF on all SPI transactions. Either:
1. No firmware in Flash (needs J-Link/SWD to recover)
2. Hardware not powered (EC-controlled, not GPIO)
3. GR5515 ROM bootloader uses BLE, not SPI — no way to program blank chip without SWD

ACPI `_INI` called successfully (kernel module, confirmed in dmesg) — didn't help.

## Path Forward

1. Logic analyzer (¥30) + Windows laptop → capture SPI boot sequence
2. J-Link EDU Mini (¥120) + find SWD pins → flash firmware directly
3. Replacement sensor module from same laptop model

## Tools

- `/dev/spidev1.0` — SPI device (bound to spidev)
- `/dev/gpiochip0` — GPIO (312 pins, INT34BB:00)
- Ghidra 12.1.2 + PyGhidra `/home/Populus/Projects/ghidra`
- arm-none-eabi-objdump 2.46.1
- GProgrammer 2.0.3 (J-Link required)

## Key Files

| File | Purpose |
|------|---------|
| `Goodix_Fingerprint_Driver_Analysis.md` | Complete analysis (13 chapters) |
| `feasibility_report.md` | Development path analysis |
| `goodix_spi_driver.py` | Linux SPI driver prototype |
| `extracted_firmware/` | 196KB ARM firmware + disassembly |
| `GR551x_DFU_Application_Note.pdf` | DFU protocol spec (BLE/UART only) |
| `GR551x_Developer_Guide.pdf` | Bootloader flow (ROM → BLE DFU) |
| `GR551x_Datasheet.pdf` | Hardware specs |
| `dal.inf_amd64_.../` | Intel DAL service (jhi_service.exe) |
| `gfspi.inf_amd64_.../` | Original Goodix driver |
| `goodix-fp-dump/` | Community Python drivers |
| `dynamic-application-loader_...pdf` | Intel DAL Developer Guide |
| `new_doc/` | GR551x reference docs + schematics |
