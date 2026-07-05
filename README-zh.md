# Goodix GXFP51A0 指纹传感器 — 逆向工程

逆向 Goodix GF3658 (GXFP51A0) 指纹 SPI 传感器，目标为 Linux 驱动开发。无 Windows、无逻辑分析仪 — 纯静态分析。

## 硬件

| 组件 | 详情 |
|------|------|
| 传感器模块 | Goodix GF3658 (GXFP51A0)，Milan 平台 |
| MCU | **Goodix GR5515IGND**（Cortex-M4F，256KB RAM，1MB Flash，BLE 5.1） |
| SPI | Mode 0，最高 10 MHz，4 线，bus 1 CS 0 |
| GPIO | 控制器 INT34BB:00，312 引脚 |
| 笔记本 | 华为 MateBook 13 (WRTB) |

## 三种 SPI 协议

| 协议 | 魔数 | 字节序 | 来源 |
|------|------|--------|------|
| **IHA**（Intel 封装层） | `0x00010000` | 大端 | iha64.dll 反编译 |
| **社区直连 SPI** | `0xccf2` → `0xa0` → `0xae` | 小端 | goodix-fp-dump 项目 |
| **GR5515 DFU** | `0x4744`（'GD' ASCII） | 小端 | Goodix DFU 应用笔记 |

## GR5515 ROM Bootloader

```
上电 → 0x00000000 → ROM Bootloader
  → 读取 SCA (0x01000000)
  → 校验应用固件 (CRC/HMAC)
     ├── 通过 → 跳转固件 → SPI 从机启动 → 响应主机命令
     └── 失败 → BLE DFU 模式 → 蓝牙广播（传感器模块无天线！）
```

**ROM Bootloader 仅支持 BLE，不支持 SPI。** 空白芯片只能通过 J-Link/SWD 恢复。

## 快速开始

```bash
# 绑定传感器到 spidev
sudo modprobe spidev
echo "spidev" | sudo tee /sys/bus/spi/devices/spi-GXFP51A0:00/driver_override
echo "spi-GXFP51A0:00" | sudo tee /sys/bus/spi/drivers/spidev/bind

# 测试所有协议
sudo python3 goodix_spi_driver.py full_test
# 当前结果：全部返回 0xFF — MCU 无响应
```

## 架构

```
主机 (Linux)                               传感器 (GR5515)
    │                                          │
    │  SPI Mode 0, 4 MHz                       │
    │  ──────────────────────────────────────→ │
    │                                          │
    │  IHA 数据包 (魔数 0x00010000)            │ ← 固件运行时
    │  社区协议包 (魔数 0xccf2)                │
    │  GR5515 DFU (魔数 0x4744)               │ ← bootloader 时
    │                                          │
    │  全部返回 0xFF — 传感器未上电？          │
    └──────────────────────────────────────────┘
```

## 文档目录

### 分析文档
- [Goodix_Fingerprint_Driver_Analysis.md](./Goodix_Fingerprint_Driver_Analysis.md) — 完整分析（14 章）
- [feasibility_report.md](./feasibility_report.md) — 三路径可行性分析
- [README.md](./README.md) — 英文项目概述

### 工具脚本
- [goodix_spi_driver.py](./goodix_spi_driver.py) — SPI 驱动原型（三种协议）
- [extract_firmware.py](./extract_firmware.py) — 固件提取
- [ghidra_deep_analyze.py](./ghidra_deep_analyze.py) — Ghidra 反编译

### ARM 固件
- [extracted_firmware/](./extracted_firmware/) — 196KB ARM 固件 + 反汇编（6 模块 + 向量表）

### GR5515 官方文档
- [GR551x_Developer_Guide](./new_doc/GR551x_Developer_Guide_Rev.2.9.pdf) — Bootloader
- [GR551x_DFU_Application_Note](./new_doc/GR551x_DFU_Application_Note_Rev.1.9.pdf) — DFU 协议
- [GR551x_Datasheet](./new_doc/GR551x_Datasheet_Rev.3.0.pdf) — 硬件规格
- [GR551x_Hardware_Design_Guidelines](./new_doc/GR551x_Hardware_Design_Guidelines_Rev.2.6.pdf) — 硬件设计
- [GR551x_Reference_Design](./new_doc/GR551x_Reference_Design_Rev.1.6/) — 参考原理图

### 第三方
- [Intel DAL Developer Guide](./dynamic-application-loader_developer-guide_1.0-773482-773483.pdf)

## 当前瓶颈

MCU 在所有 SPI 命令上返回 0xFF。可能原因：
- **无供电** — 电源由 EC 控制，GPIO/ACPI 无法开启
- **无固件** — 需要 J-Link/SWD（GR5515 ROM bootloader 仅 BLE）
- **协议错误** — 需要从 Windows 系统捕获真实 SPI 序列

## 突破方案

| 方案 | 成本 | 风险 |
|------|------|------|
| 逻辑分析仪 + 借 Windows 笔记本 | ~¥30 | 低 |
| J-Link EDU Mini + 找 SWD 引脚 | ~¥120 | 高 |
| 同型号替换传感器模块 | ~¥50-100 | 中 |

## 相关资源

- [goodix-fp-linux-dev/goodix-fp-dump](https://github.com/goodix-fp-linux-dev/goodix-fp-dump)
- [owaink/libfprint Wiki](https://github.com/owaink/libfprint/wiki)
- [fwupd goodix-moc 插件](https://github.com/fwupd/fwupd)
- [libfprint](https://gitlab.freedesktop.org/libfprint/libfprint)
