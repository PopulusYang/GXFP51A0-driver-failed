# Goodix GXFP51A0 指纹传感器 — 逆向工程

> 在没有 Windows 环境和逻辑分析仪的条件下，逆向 Goodix GF3658 (GXFP51A0/GXFP51A7) 指纹 SPI 传感器，目标为开发 Linux 驱动。

## 快速开始

```bash
# 绑定传感器到 spidev
sudo modprobe spidev
echo "spidev" | sudo tee /sys/bus/spi/devices/spi-GXFP51A0:00/driver_override
echo "spi-GXFP51A0:00" | sudo tee /sys/bus/spi/drivers/spidev/bind

# 调用 ACPI _INI 给传感器上电（内核模块，可能无效）
# make -C /lib/modules/$(uname -r)/build M=$PWD modules && sudo insmod gxfp51a0_drv.ko

# 测试 SPI
sudo python3 goodix_spi_driver.py info
# 当前状态：MCU 返回全 0xFF — 需要先加载固件
```

## 已确认的技术细节

- **MCU**: ARM Cortex-M4F，STM32F4/GD32F4 兼容，SPI2 从机模式
- **SPI**: Mode 0, 10 MHz, 4 线（MOSI/MISO/CLK/CS）
- **GPIO**: 复位引脚候选 GPIO 36（控制器 INT34BB:00，312 引脚）
- **固件**: 从 gfspi.dll 的 `.rdata` 段提取 196KB ARM 代码
- **协议**: IHA 数据包格式已完全解码
- **ACPI**: `\_SB_.PCI0.SPI1.FPNT`，HID `GXFP51A0`

## 架构

```
主机 (Linux)                               传感器 MCU
    │                                          │
    │  SPI Mode 0, 10 MHz                      │
    │  IHA 协议数据包 ────────────────────────→│
    │  Magic: 0x00010000                       │
    │  命令: 0x19 (收发) / 0x07 (发送)          │
    └──────────────────────────────────────────┘
```

## 已完成的工作

| 阶段 | 成果 |
|------|------|
| 驱动架构分析 | 五层协议栈完整解码（gfspi→iha→JHI→Service→硬件） |
| ARM 固件提取 | 196KB，6 个代码模块 + 5 个数据间隙，完整反汇编 |
| SPI 协议 | IHA 数据包格式、命令码、响应格式已破译 |
| Flash 操作 | STM32 标准解锁序列（KEY1/KEY2），命令 3-9 |
| MCU 识别 | STM32F4/GD32F4 兼容，SPI2 通信 |
| Linux 工具 | SPI 驱动原型 + GPIO 复位 + ACPI _INI 内核模块 |
| 下载链路 | 华为 DriverTools → HiCloud API → 完整驱动包 URL |

## 文件说明

| 文件 | 说明 |
|------|------|
| `Goodix_Fingerprint_Driver_Analysis.md` | 完整分析文档（13 章） |
| `feasibility_report.md` | 三条开发路径的可行性分析 |
| `goodix_spi_driver.py` | Linux SPI 驱动原型 |
| `extracted_firmware/` | 196KB ARM 固件二进制 + 反汇编 |
| `iha64.dll` | Intel IHA 协议层（动态加载） |
| `JHI64.dll` | Java 主机接口客户端 |
| `otpIha64.dll` | Intel OTP IHA 扩展 |
| `dal.inf_amd64_.../` | Intel DAL 服务（jhi_service.exe + SpoolerApplet） |
| `gfspi.inf_amd64_.../` | Goodix 原版驱动文件 |
| `dynamic-application-loader_...pdf` | Intel DAL 开发者指南 |
| `DriverTools_setup.exe` | 华为驱动下载工具（NSIS 安装包） |

## 当前瓶颈

MCU 所有 SPI 通信返回 `0xFF`。原因可能是：
1. MCU Flash 中没有固件（出厂空白）
2. 传感器未上电（电源由 EC/LDO 控制，仅拉 GPIO 不够）
3. 需要专有的 SPI 唤醒序列

ACPI `_INI` 方法已通过内核模块成功调用（dmesg 确认），但传感器仍无响应。

## 突破瓶颈需要

- 逻辑分析仪（~¥30）捕获 Windows 环境的 SPI 上电序列
- 或获取 JHI Service 的 SPI 传输层实现

## 相关资源

- [libfprint](https://gitlab.freedesktop.org/libfprint/libfprint) — Linux 开源指纹库
- [Intel DAL 开发者指南](https://www.intel.com/content/www/us/en/docs/dynamic-application-loader/developer-guide/1-0/)
