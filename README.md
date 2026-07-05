# Goodix GXFP51A0 Fingerprint Sensor — Reverse Engineering

Reverse engineering the Goodix GF3658 (GXFP51A0) fingerprint SPI sensor for Linux driver development. No Windows, no logic analyzer — pure static analysis.

## Hardware

| Component | Detail |
|-----------|--------|
| Sensor module | Goodix GF3658 (GXFP51A0), Milan platform |
| MCU | **Goodix GR5515IGND** (Cortex-M4F, 256KB RAM, 1MB Flash, BLE 5.1) |
| SPI | Mode 0, up to 10 MHz, 4-wire, bus 1 CS 0 |
| GPIO | Controller INT34BB:00, 312 pins |
| Laptop | Huawei MateBook 13 (WRTB) |

## Three SPI Protocols Discovered

| Protocol | Magic | Byte Order | Source |
|----------|-------|------------|--------|
| **IHA** (Intel layer) | `0x00010000` | Big-endian | iha64.dll decompilation |
| **Community SPI** | `0xccf2` → `0xa0` → `0xae` | Little-endian | goodix-fp-dump project |
| **GR5515 DFU** | `0x4744` ('GD' ASCII) | Little-endian | Goodix DFU Application Note |

## GR5515 ROM Bootloader

```
Power on → 0x00000000 → ROM Bootloader
  → Read SCA (0x01000000)
  → Check firmware integrity (CRC/HMAC)
     ├── Pass → Jump to app → SPI slave active → respond to host
     └── Fail → BLE DFU mode → Bluetooth broadcast (no antenna on module!)
```

**ROM Bootloader = BLE only, no SPI support.** Blank chip recovery requires J-Link/SWD.

## Quick Start

```bash
# Bind sensor to spidev
sudo modprobe spidev
echo "spidev" | sudo tee /sys/bus/spi/devices/spi-GXFP51A0:00/driver_override
echo "spi-GXFP51A0:00" | sudo tee /sys/bus/spi/drivers/spidev/bind

# Test all protocols
sudo python3 goodix_spi_driver.py full_test
# Currently: all return 0xFF — MCU not responding
```

## Architecture

```
Host (Linux)                               Sensor (GR5515)
    │                                          │
    │  SPI Mode 0, 4 MHz                       │
    │  ──────────────────────────────────────→ │
    │                                          │
    │  IHA packet (0x00010000 magic)           │ ← when firmware running
    │  Community packet (0xccf2 magic)         │
    │  GR5515 DFU (0x4744 magic)              │ ← when bootloader active
    │                                          │
    │  All return 0xFF — sensor powered off?   │
    └──────────────────────────────────────────┘
```

## Document Index

### Analysis Documents
- [Goodix_Fingerprint_Driver_Analysis.md](./Goodix_Fingerprint_Driver_Analysis.md) — 完整分析文档（14 章）
- [feasibility_report.md](./feasibility_report.md) — 三条路径可行性分析
- [CLAUDE.md](./CLAUDE.md) — Claude Code 会话上下文
- [README-zh.md](./README-zh.md) — 中文版项目概述

### Tools & Scripts
- [goodix_spi_driver.py](./goodix_spi_driver.py) — Linux SPI 驱动原型（支持 IHA / Community / GR5515 DFU 三种协议）
- [extract_firmware.py](./extract_firmware.py) — PyGhidra 固件提取脚本
- [ghidra_deep_analyze.py](./ghidra_deep_analyze.py) — Ghidra 深度反编译脚本

### Extracted ARM Firmware (196KB from gfspi.dll)
- [fw_mod_01_bootstrap_1172.bin](./extracted_firmware/fw_mod_01_bootstrap_1172.bin) — FPU 数学库 (1172B)
- [fw_mod_02_flash_ops_4242.bin](./extracted_firmware/fw_mod_02_flash_ops_4242.bin) — Flash 操作层 (4242B)
- [fw_mod_03_handlers_4306.bin](./extracted_firmware/fw_mod_03_handlers_4306.bin) — 中断处理器 (4306B)
- [fw_mod_04_flash_v2_4112.bin](./extracted_firmware/fw_mod_04_flash_v2_4112.bin) — Flash 操作 V2 (4112B)
- [fw_mod_05_flash_access_2201.bin](./extracted_firmware/fw_mod_05_flash_access_2201.bin) — Flash 访问层 (2201B)
- [fw_mod_06_main_init_5878.bin](./extracted_firmware/fw_mod_06_main_init_5878.bin) — 主初始化 + 事件调度 (5878B)
- [fw_st411_vector_table_256.bin](./extracted_firmware/fw_st411_vector_table_256.bin) — ST411 中断向量表 (256B)
- [fw_hc460_descriptor_128.bin](./extracted_firmware/fw_hc460_descriptor_128.bin) — HC460 固件描述符 (128B)
- [disasm/](./extracted_firmware/disasm/) — ARM Thumb-2 反汇编 (*.s)

### Goodix GR5515 Official Documents
- [GR551x_Developer_Guide](./new_doc/GR551x_Developer_Guide_Rev.2.9.pdf) — Bootloader、SCA、Flash 布局
- [GR551x_DFU_Application_Note](./new_doc/GR551x_DFU_Application_Note_Rev.1.9.pdf) — DFU 协议 (BLE + UART)
- [GR551x_Datasheet](./new_doc/GR551x_Datasheet_Rev.3.0.pdf) — 硬件规格
- [GR551x_Hardware_Design_Guidelines](./new_doc/GR551x_Hardware_Design_Guidelines_Rev.2.6.pdf) — 硬件设计指南
- [GR551x_Reference_Design](./new_doc/GR551x_Reference_Design_Rev.1.6/) — 参考原理图 (QFN56/BGA55/BGA68)

### Intel / Third-Party
- [Intel DAL Developer Guide](./dynamic-application-loader_developer-guide_1.0-773482-773483.pdf) — Intel DAL 开发者指南

## Blocked On

MCU returns 0xFF on all SPI commands. Two confirmed reasons:

1. **GR5515 ROM Bootloader is BLE-only — does not listen on SPI.** If firmware is missing or corrupted, the chip enters BLE DFU mode. The sensor module has no antenna, making over-the-air recovery impossible without J-Link/SWD.
2. **Sensor not powered.** Power is controlled by the Embedded Controller (EC) via ACPI. Linux has no GXFP51A0 driver to trigger the power sequence. GPIO and `_INI` calls do not enable it.

Both may be true simultaneously. Either way, pure software cannot proceed further.

## Path Forward

| Option | Cost | Risk |
|--------|------|------|
| Logic analyzer + borrowed Windows laptop | ~¥30 | Low |
| J-Link EDU Mini + find SWD pins | ~¥120 | High |
| Replacement sensor module | ~¥50-100 | Medium |

## Related

- [goodix-fp-linux-dev/goodix-fp-dump](https://github.com/goodix-fp-linux-dev/goodix-fp-dump)
- [owaink/libfprint Wiki](https://github.com/owaink/libfprint/wiki)
- [fwupd goodix-moc plugin](https://github.com/fwupd/fwupd)
- [libfprint](https://gitlab.freedesktop.org/libfprint/libfprint)
