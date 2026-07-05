# Goodix 指纹驱动逆向分析笔记

> 硬件: Goodix Fingerprint SPI Device (ACPI\GXFP51A0)
> 驱动版本: 1.1.141.40 (2024/7/13)
> INF: oem11.inf

---

## 目录

1. [驱动文件完整清单](#1-驱动文件完整清单)
2. [运行时部署位置](#2-运行时部署位置)
3. [驱动架构分析](#3-驱动架构分析)
4. [逆向优先级建议](#4-逆向优先级建议)
5. [INF 关键信息摘要](#5-inf-关键信息摘要)
6. [ACPI 硬件信息](#6-acpi-硬件信息)

---

## 1. 驱动文件完整清单

### 驱动仓库（推荐从这里复制）

```
C:\Windows\System32\DriverStore\FileRepository\gfspi.inf_amd64_cbf3264a9dc4fd92\
```

| 文件 | 大小 | 最后修改 | 说明 |
|------|------|----------|------|
| **gfspi.dll** | **3,921,408** (3.9 MB) | 2024/7/15 | ⭐ **UMDF 驱动主文件 — 逆向核心** |
| **EngineAdapter.dll** | **587,176** (587 KB) | 2024/7/15 | ⭐ **指纹比对引擎适配器** |
| **Engine_Enclave_3.02.00.signed.dll** | **687,216** (687 KB) | 2024/7/15 | ⭐ 指纹算法引擎 v3.02（SGX 飞地） |
| **Engine_Enclave_3.00.20.signed.dll** | **544,872** (544 KB) | 2024/7/15 | ⭐ 指纹算法引擎 v3.00（SGX 飞地） |
| **WBDI_Enclave.signed.dll** | **655,464** (655 KB) | 2024/7/15 | ⭐ **WBDI 安全飞地封装层** |
| SessionService.exe | 32,752 (32 KB) | 2024/7/15 | 会话检测服务 |
| GoodixEventLog.dll | 19,824 (19 KB) | 2024/7/15 | ETW 事件日志提供程序 |
| sgx_white_list_cert.bin | 632 B | 2024/7/15 | SGX 白名单证书 |
| gfspi.cat | 38,173 (37 KB) | 2024/7/15 | 数字签名目录文件 |
| gfspi.inf | 14,723 (14 KB) | 2024/7/15 | 驱动程序 INF |
| gfspi.PNF | 23,308 (23 KB) | 2025/5/29 | INF 预编译文件 |

---

## 2. 运行时部署位置

| 文件 | 目标路径 | 角色 |
|------|----------|------|
| `gfspi.dll` | `C:\Windows\System32\drivers\umdf\gfspi.dll` | UMDF 用户态驱动（旧版 2019，仓库中是新版） |
| `EngineAdapter.dll` | `C:\Windows\System32\WinBioPlugins\EngineAdapter.dll` | Windows Hello 插件 — 引擎适配器 |
| `Engine_Enclave_3.02.00.signed.dll` | `C:\Windows\System32\WinBioPlugins\` | 安全区引擎 v3.02 |
| `Engine_Enclave_3.00.20.signed.dll` | `C:\Windows\System32\WinBioPlugins\` | 安全区引擎 v3.00 |
| `WBDI_Enclave.signed.dll` | `C:\Windows\System32\WinBioPlugins\WBDI_Enclave.signed.dll` | WBDI 安全封装 |
| `SessionService.exe` | `C:\Windows\System32\drivers\SessionService.exe` | 服务（SessionSvc） |
| `GoodixEventLog.dll` | `C:\Windows\System32\GoodixEventLog.dll` | ETW 事件日志 |
| `sgx_white_list_cert.bin` | `C:\Windows\System32\WinBioPlugins\sgx_white_list_cert.bin` | SGX 证书 |

### 运行时数据目录

```
C:\ProgramData\Goodix\
```

| 文件 | 说明 |
|------|------|
| `goodix_calib.dat` | 传感器校准参数 |
| `goodix.dat` | 设备配置/状态 |
| `goodix_temp.dat` | 临时文件 |
| `Goodix_Cache.bin` | 缓存 |
| `engine_sgx_launch.dat` | SGX 引擎启动数据 |
| `wbdi_sgx_launch.dat` | WBDI 安全数据 |

---

## 3. 驱动架构分析

从 INF 分析，此驱动使用 **UMDF 2.15**（User-Mode Driver Framework），运行在用户态，通过 WUDFHost.exe 承载。

### 架构概览

```
┌─────────────────────────────────────────────────────────────────┐
│                    UMDF Host Process (WUDFHost.exe)              │
│  ┌──────────────────────────────────────────────────────────┐   │
│  │                    gfspi.dll                              │   │
│  │  ┌──────────────────────────────────────────────────┐    │   │
│  │  │  SPI 硬件通信层 (直接操作硬件寄存器)              │    │   │
│  │  │  - 传感器初始化序列                                │    │   │
│  │  │  - SPI 命令封装 (读/写寄存器)                     │    │   │
│  │  │  - 指纹图像采集                                  │    │   │
│  │  │  - 中断处理                                      │    │   │
│  │  └──────────────────────────────────────────────────┘    │   │
│  └──────────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────────────┐
│               Windows Bio Service (WbioSrvc)                     │
│  ┌──────────────────────────────────────────────────────────┐   │
│  │  WinBioSensorAdapter.DLL (Windows 内置)                   │   │
│  │  传感器适配器 — 连接 UMDF 驱动与 Windows Bio Framework   │   │
│  └──────────────────────────────────────────────────────────┘   │
│                            │                                     │
│  ┌──────────────────────────────────────────────────────────┐   │
│  │  EngineAdapter.dll                                       │   │
│  │  引擎适配器 — 汇顶指纹特征提取与比对接口                 │   │
│  │  ┌──────────────────────────────────────────────────┐    │   │
│  │  │  Engine_Enclave_3.02.00.signed.dll (SGX 飞地)   │    │   │
│  │  │  └ 加密飞地中的指纹算法                           │    │   │
│  │  │  Engine_Enclave_3.00.20.signed.dll (SGX 飞地)   │    │   │
│  │  │  └ 加密飞地中的指纹算法（旧版）                  │    │   │
│  │  └──────────────────────────────────────────────────┘    │   │
│  └──────────────────────────────────────────────────────────┘   │
│                            │                                     │
│  ┌──────────────────────────────────────────────────────────┐   │
│  │  WBDI_Enclave.signed.dll                                 │   │
│  │  WBDI 安全封装 — 提供 Windows Biometric Driver Interface │   │
│  └──────────────────────────────────────────────────────────┘   │
│                            │                                     │
│  ┌──────────────────────────────────────────────────────────┐   │
│  │  WinBioStorageAdapter.DLL (Windows 内置)                 │   │
│  │  存储适配器 — 管理指纹模板数据库                         │   │
│  └──────────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────────┘
```

### 服务

| 服务名 | 二进制 | 启动类型 | 说明 |
|--------|--------|----------|------|
| `WUDFRd` | `%12%\WUDFRd.sys` | 手动 (3) | Windows User-Mode Driver Framework 反射器（系统组件） |
| `SessionSvc` | `%12%\SessionService.exe` | 自动 (2) | **Session Detection** — 汇顶会话检测服务 |

### Windows Bio 配置注册表

```
HKLM\SYSTEM\CurrentControlSet\Services\WbioSrvc\Databases\{6E9D4C5A-55B4-4c52-90B7-DDDC75CA4D50}
```

该驱动注册为 Windows Hello 兼容设备，使用独立指纹数据库。

---

## 4. 逆向优先级建议

### 🥇 第一优先级 — gfspi.dll

**文件**: `gfspi.inf_amd64_cbf3264a9dc4fd92\gfspi.dll` (3.9 MB)

这是 **UMDF 驱动主文件**，直接操作 SPI 硬件。对于编写 Linux 驱动，这是最重要的文件，因为：

- 包含 **SPI 寄存器映射** — 传感器命令和寄存器地址
- 包含 **设备初始化序列** — 上电、校准、配置流程
- 包含 **图像采集协议** — 如何获取指纹图像
- 包含 **SPI 时序和协议细节** — 时钟频率、数据格式
- 包含 **中断处理逻辑** — 手指按下/抬起检测

此 DLL 实现了 UMDF 的 `IWDFDriver`、`IWDFDevice` 等接口，导出函数与 WDF 框架交互。

### 🥈 第二优先级 — WBDI_Enclave.signed.dll

**文件**: `WBDI_Enclave.signed.dll` (655 KB)

Windows Biometric Driver Interface 的封装层，可以了解：

- WBDI IOCTL 命令集
- 数据格式转换逻辑
- 与 Windows Bio Service 的交互协议

### 🥉 第三优先级 — Engine 系列 DLL

这些 DLL 标记了 `WindowsHello = true`，使用了 **Intel SGX（Software Guard Extensions）** 飞地加密：

- **EngineAdapter.dll** — 引擎适配器接口
- **Engine_Enclave_3.02.00.signed.dll** / **Engine_Enclave_3.00.20.signed.dll** — 实际算法运行在 SGX 飞地内

SGX 飞地内的代码在硬件级加密内存中运行，**难以直接逆向**。但对于 Linux 驱动开发，这部分（指纹特征提取/比对）通常可以先用 Linux 的 `libfprint` 框架或者开源算法替代，不是必须逆向的。

### SessionService.exe

常驻后台服务，负责会话检测。对于 Linux 驱动不是核心组件。

---

## 5. INF 关键信息摘要

从 `oem11.inf` 提取的关键配置：

| 字段 | 值 |
|------|-----|
| 设备类 | Biometric |
| 设备类 GUID | `{53D29EF7-377C-4D14-864B-EB3A85769359}` |
| 兼容 ID | `ACPI\GXFP51A7`, `ACPI\GXFP51A0` |
| 驱动程序版本 | `1.1.141.40` |
| 驱动日期 | 2024/7/13 |
| UMDF 版本 | 2.15.0 |
| 数据库 GUID | `{6E9D4C5A-55B4-4c52-90B7-DDDC75CA4D50}` |
| 传感器模式 | 1 (Basic) |
| 系统传感器 | 1 (UAC/Winlogon 可用) |
| 支持直接硬件访问 | Yes (`UmdfDirectHardwareAccess=AllowDirectHardwareAccess`) |
| 禁止进程共享 | Yes (`UmdfHostProcessSharing=ProcessSharingDisabled`) |
| 签名类型 | WindowsHello |

---

## 6. ACPI 硬件信息

```
设备:          Goodix Fingerprint SPI Device
硬件 ID:       ACPI\GXFP51A0 (也兼容 GXFP51A7)
制造商:        Goodix FP
驱动:          oem11.inf (WUDF)
```

---

## 参考

- 驱动仓库路径: `C:\Windows\System32\DriverStore\FileRepository\gfspi.inf_amd64_cbf3264a9dc4fd92\`
- WinBioPlugins: `C:\Windows\System32\WinBioPlugins\`
- 运行时数据: `C:\ProgramData\Goodix\`
- INF 源文件: `C:\Windows\inf\oem11.inf`

---
## 7. 静态逆向工程分析（gfspi.dll）

> 基于 strings、PE 结构分析，无 Windows 环境下的纯静态分析。

### 7.1 编译来源与版本标识

从 PDB 路径获取的源文件信息：

| 组件 | PDB 路径 | 编译环境 |
|------|----------|----------|
| **gfspi.dll** | `D:\Project\Huawei_Watt2\winfpcode\Milan_Watt\MilanSpi\x64\Release_GF3658\gfspi\gfspi.pdb` | Visual Studio 2019 (linker 14.16) |
| **WBDI_Enclave.signed.dll** | `E:\Git\git_master_watt2\winfpcode\Milan_Watt\SGX\x64\Release_GF3658\WBDI_Enclave.pdb` | 独立 SGX 仓库 |
| **EngineAdapter.dll** | `D:\Project\Huawei_Watt2\winfpcode\Milan_Watt\MilanSpi\adapters\engine_adapter\x64\Release_GF3658\EngineAdapter.pdb` | 同主仓库，adapters 子目录 |
| **SessionService.exe** | `D:\Project\Huawei_Watt2\winfpcode\Milan_Watt\MilanSpi\x64\Release_GF3658\SessionService.pdb` | 同主仓库 |

**项目代号体系**：
- **Milan** — 该项目的内部代号
- **Watt / Watt2** — 华为产品代号（华为 MateBook 系列?）
- **GF3658** — 指纹传感器芯片型号
- **HC460** — 另一款芯片/模组型号
- **ST411** — 另一款芯片/模组型号

### 7.2 PE 结构分析

#### gfspi.dll

```
ImageBase:  0x0000000180000000
SizeOfImage: 0x00424000 (~4MB)
EntryPoint:  0x0000000180087000
Linker:      Microsoft Linker 14.16 (VS 2019)
Sections:    7

.text    VA=0x00001000  size=0x0a5a00  code
.rdata   VA=0x000a7000  size=0x307800  read-only data
.data    VA=0x003af000  size=0x06b8b8  read-write data
.pdata   VA=0x0041b000  size=0x0047f4  exception info
.gxfg    VA=0x00420000  size=0x001d70  Goodix custom data
.gehcont VA=0x00422000  size=0x000014  guard EH continuation
.reloc   VA=0x00423000  size=0x000f04  base relocations
```

**导出函数**：仅 1 个 — `FxDriverEntryUm` (UMDF 驱动入口点)

**关键导入**：
- `sgx_urts.dll` → `sgx_create_enclavew`, `sgx_destroy_enclave`, `sgx_ecall` — SGX 飞地管理
- `sgx_uae_service.dll` → `sgx_register_wl_cert_chainw` — SGX 白名单证书注册
- `CallNtPowerInformation` — ACPI 电源管理
- `PowerGetActiveScheme`, `PowerReadDCValue`, `PowerReadACValue` — 电源策略

**`.gxfg` 自定义段**：
- 大小 0x1d70 字节，包含结构化数据（8字节对齐的记录表）
- 每条记录格式：`{u32 size/type, u32 reserved, u64 flags/data}`
- 可能包含固件 applet 的配置表或指纹模板元数据

### 7.3 IHA 协议层

IHA（Image Hardware Abstraction?）是 gfspi.dll 中的核心抽象层，负责与 MCU 通信：

```
IHA_Init()                    — 初始化 IHA 层
IHA_DeInit()                  — 反初始化
IHA_Install()                 — 安装 Applet 到 MCU Flash
IHA_Uninstall()               — 卸载 Applet
IHA3_StartInstance()          — 启动 IHA3 实例
IHA3_StopInstance()           — 停止 IHA3 实例
IHA3_SendAndReceiveData()     — 与 MCU 双向通信（核心函数）
```

**错误消息**：
- `"IHA Init function failed"`
- `"IHA Install Applet function failed"`
- `"IHA Send and Receive function failed"`
- `"IHA Start Instance function failed"`
- `"Applet Folder Path invalid"`
- `"Applet Source File Missing. Make sure to place the file in the same folder"`

**Applet 机制**：
IHA 层使用 "Applet" 机制 — 驱动在初始化时将固件 applet 加载到 MCU 的 Flash 中运行。
Applet 文件应位于驱动同目录下。这与 FPC（Fingerprint Cards）的 applet 机制类似。

### 7.4 固件版本与芯片型号

从字符串中提取出的固件标识：

| 固件标识 | 说明 |
|----------|------|
| `FpGGF_ST411SEC_APP_14115` | ST411 安全应用 v14115（完整版） |
| `GF_ST411SEC_APP_14115` | ST411 安全应用 v14115 |
| `GF_HC460SEC_APP_14102` | HC460 安全应用 v14102 |
| `GF_HC460SEC_APP_14104` | HC460 安全应用 v14104（更新版） |
| `MILAN_HC460SEC_IAP_14102` | Milan 项目 HC460 IAP (In-Application Programming) v14102 |
| `Algo:fpcore` | 指纹核心算法标识符 |

**IAP (In-Application Programming)** 是 MCU 固件更新机制，允许在运行时更新 MCU 程序。

### 7.5 MCU Flash 管理

gfspi.dll 直接管理 MCU 的 Flash 存储：

**Flash 状态检测**：
- `"Flash is Empty"` / `"Flash is not Empty"`
- `"Incorrect data in Flash"`
- `"Already had an same type data in MCU Flash."`

**Flash 写入/擦除**：
- `"Erase data does not match with 'ERASE'"` — 擦除验证失败
- `"Data size exceeds the flash capacity"` — 数据超出容量
- `"MCU Write data failed, \"Wrong Data type\"."` — 数据类型错误

**MCU 执行**：
- `"MCU Excute Successfully."`
- `"MCU excute failed, unknown reason."`

### 7.6 ACPI 交互

- `"ACPI_HWFP firmware table not found"` — 在 ACPI 表中查找 HWFP (Hardware Fingerprint?) 固件表
- `"Firmware table data too small"` — ACPI 表数据不完整
- 驱动通过 ACPI 获取硬件配置（SPI 资源、GPIO 中断线等）

### 7.7 SGX 安全通信协议

gfspi.dll 通过 SGX 飞地进行安全密钥交换：

```
[REE 端 — gfspi.dll]
  DhGenMsg1()          → 生成 DH 消息 1
  DhProcMsg2GenMsg3()  → 处理消息 2，生成消息 3
  DhProcMsgTest()      → 处理测试消息
  DhReeServerStep()    → REE 端服务步骤

[SGX 飞地端 — WBDI_Enclave.signed.dll]
  DhSgxGenMsg1()        → 生成 DH 消息 1（飞地内）
  DhSgxServerStep1/2()  → 服务端 DH 步骤
  DhSgxClientStep1/2()  → 客户端 DH 步骤
  DhSgxEncrypt()        → 飞地内加密
  DhSgxDecrypt()        → 飞地内解密
  DhSgxVerifyMrSigner() → 验证飞地签名者身份
  DhSgxGenerateTestMsg() / DhSgxRetrieveTestMsg()
```

DH (Diffie-Hellman) 密钥交换成功后，后续通信使用 AES 加密（`goodix_AES_encrypt_enclave`）。

源文件: `d:\git_code\safe_code\winfpsec_master_git\winfpsec\seclibs\sourceall\sourcecodelocalattestion\secdhree.c`

---
## 8. WBDI 飞地接口分析（WBDI_Enclave.signed.dll）

### 8.1 导出函数

| 导出 | 说明 |
|------|------|
| `enclave_entry` | SGX 飞地主入口点 |
| `g_checked_by_emmt` | EMMT (Enclave Memory Management Tool) 验证标志 |
| `g_peak_heap_used` | 飞地堆内存使用峰值 |

### 8.2 WBDI 命令协议

WBDI (Windows Biometric Driver Interface) 命令格式：

```
Cmd:0x%02x, Cmd0:0x%02x, Cmd1:0x%02x, Cmd2:0x%02x, Length:%d
```

4 字节命令头 + 变长数据。格式类似：
```c
struct wbdi_command {
    uint8_t  cmd;       // 主命令
    uint8_t  cmd0;      // 子命令
    uint8_t  cmd1;      // 参数1
    uint8_t  cmd2;      // 参数2
    uint32_t length;    // 数据长度
    uint8_t  data[];    // 变长数据
};
```

### 8.3 ECALL 函数表（飞地入口）

从 WBDI_Enclave 和 EngineAdapter 中提取的飞地入口函数：

**数据采集类**：
- `chicagoHUget_rawdata_ecall` — Chicago 平台获取原始指纹图像
- `chicagoHUget_navdata_ecall` — Chicago 平台获取导航数据
- `milanLget_rawdata_ecall` — Milan 平台获取原始指纹图像
- `data_from_device_enclave` — 从设备接收数据

**缓冲区管理**：
- `init_buffer_ecall` — 初始化飞地缓冲区（frame/navbase/imagebase/filenavbase/backup 内存）
- `get_basesize_ecall` — 获取基大小
- `get_datasize_ecall` — 获取数据大小
- `device_check_imagebase_exist_ecall` — 检查图像基是否存在

**安全验证**：
- `gf_check_baseisvalid_ecall` — 验证基数据有效性
- `goodix_AES_encrypt_enclave` — AES 加密
- `DhSgxVerifyMrSigner` — DH 签名者验证

**流控/TLS**：
- `tls_read_ecall` — TLS 读取
- `DhSgxClientStep1/2` — DH 客户端步骤

### 8.4 传感器参数

```
sensortype %u, len %u, nav_len %u, pov retry %u, max retry cnt %u
```

| 参数 | 说明 |
|------|------|
| `sensortype` | 传感器类型 (ST411 / HC460 / GF3658) |
| `len` | 传感器有效区域长度 |
| `nav_len` | 导航区域长度（用于滑动/导航检测） |
| `pov retry` | POV (Point of Verification?) 重试次数 |
| `max retry cnt` | 最大重试次数 |

### 8.5 TLS 安全通道

WBDI 使用基于 **mbedTLS** 的 TLS/SSL 加密通道保护指纹数据传输：
- 证书链验证（DigiCert）
- `MBEDTLS_SSL_DTLS_HELLO_VERIFY` — DTLS 支持
- 握手类型检测：`client hello v3, handshake type: %d`
- 记录格式：`input record: msgtype = %d, version = [%d:%d], msglen = %d`
- Alert 处理：`got an alert message, type: [%d:%d]`

### 8.6 数据流

```
[Host/REE]                    [SGX Enclave]
    │                               │
    ├── DH 密钥交换 ────────────────┤  (DhSgxServerStep1/2)
    │                               │
    ├── 加密指纹数据 ──────────────→│  (goodix_AES_encrypt_enclave)
    │                               │
    ├── 图像数据解密 ──────────────→│  (DhSgxDecrypt)
    │                               │
    ├── 原始图像处理 ──────────────→│  (milanLget_rawdata_ecall)
    │                               │
    ├── 指纹特征提取 ──────────────→│  (Algo:fpcore)
    │                               │
    └── 验证 MrSigner ──────────────┤  (DhSgxVerifyMrSigner)
```

---
## 9. EngineAdapter 接口分析

### 9.1 WinBio 引擎适配器

EngineAdapter.dll 是 Windows Biometric Framework 的引擎适配器，实现了 WinBio 引擎接口。

**导出函数**：
- `WbioQueryEngineInterface` — 查询引擎接口（WinBio 标准接口）

### 9.2 错误/信息/警告分类

| 前缀 | 类别 | 示例 |
|------|------|------|
| `GF_ERROR_*` | 错误 | `GF_ERROR_ENROLLMENT`, `GF_ERROR_MATCH`, `GF_ERROR_DRIVER_IO_ERROR` |
| `GF_INFO_*` | 信息 | `GF_INFO_ENROLLMENT`, `GF_INFO_TEMPLATE_CREATE`, `GF_INFO_SGX_ENGINE` |
| `GF_WARN_*` | 警告 | `GF_WARN_ENROLLMENT`, `GF_WARN_MATCH`, `GF_WARN_TEMPLATE` |
| `GF_COUNT_*` | 计数/统计 | `GF_COUNT_MATCH`, `GF_COUNT_ENGINE_COUNT` |

### 9.3 关键错误码

```
GF_ERROR_ACQUIRED_IMAGER_DIRTY     — 传感器表面脏污
GF_ERROR_ACQUIRED_PARTIAL           — 指纹图像不完整
GF_ERROR_ALGORITHM                  — 算法错误
GF_ERROR_ALGORITHM_INIT_FAILED      — 算法初始化失败
GF_ERROR_CANCELED                   — 操作被取消
GF_ERROR_CHECK_SUM                  — 校验和错误
GF_ERROR_D0EXIT_HAPPENED            — 设备退出 D0 状态（电源管理）
GF_ERROR_DRIVER_IO_ERROR            — 驱动 I/O 错误
GF_ERROR_ENGINE_STATE               — 引擎状态错误
GF_ERROR_ENROLL_IN_PROGRESS         — 录入进行中
GF_ERROR_ENROLLMENT_CREATION_FAIL   — 录入创建失败
GF_ERROR_MATCH_FAIL_AND_RETRY       — 匹配失败，需重试
GF_ERROR_SAVE_FP_TEMPLATE           — 保存指纹模板失败
GF_ERROR_TEST_FRR_FAR_ENROLL_DIFFERENT_FINGER — FRR/FAR 测试：不同手指
```

### 9.4 WBDI 通信

EngineAdapter 与 WBDI 飞地之间的消息类型：
```
"Hello WBDI"  — 初始化握手
"Failed, Get msg from WBDI Failed."         — 接收 WBDI 消息失败
"Failed, Send msg2 or Get msg3 from WBDI Failed." — DH 交换失败
"Failed, Send test msg to WBDI Failed."     — 测试消息发送失败
```

**消息结构**（从错误消息推断）：
```c
struct wbdi_message {
    uint32_t Type;      // 消息类型（msg1/msg2/msg3/test）
    uint32_t LenValue;  // 数据长度
    uint8_t  data[];    // 消息内容
};
```

### 9.5 指纹样本标识符

```
SAMPLE_IDENTIFIER: {AA98EC20-41B4-45FE-A78E-3622E9CBC30B}
```

这是 Windows Hello 指纹数据库中的样本格式 GUID。

---
## 10. 开发 Linux 驱动的关键信息

### 10.1 必须逆向的 SPI 协议

以下是从静态分析推断出的 SPI 操作需求：

1. **MCU Applet 加载** — 驱动通过 SPI 将 applet 固件写入 MCU Flash
2. **MCU 命令执行** — 通过 `IHA3_SendAndReceiveData()` 发送命令并接收响应
3. **指纹图像捕获** — 触发传感器采集，通过 SPI 读取原始图像数据
4. **中断处理** — 手指按下/抬起的中断信号
5. **电源管理** — D0/D3 状态切换，空闲超时（5000ms）

### 10.2 可替代的组件

以下组件是 Windows 平台特有的，Linux 驱动不需要：

| Windows 组件 | Linux 替代 |
|--------------|-----------|
| SGX 飞地 (WBDI_Enclave) | 用户态处理（TLS 可选） |
| DH 密钥交换 | 可选；数据可明传 |
| EngineAdapter + Engine_Enclave | libfprint 算法 |
| WinBio 框架 | libfprint fprintd |
| SessionService | systemd-logind / elogind |
| ETW 事件日志 | syslog / journald |

### 10.3 Linux 驱动开发路径建议

**Phase 1 — 基础 SPI 通信**：
- 实现 SPI 读写封装
- 实现 MCU Applet 加载（需要获取 applet 二进制）
- 实现基本的 MCU 命令/响应

**Phase 2 — 图像采集**：
- 实现指纹图像采集协议
- 验证图像数据格式（尺寸、分辨率、位深度）

**Phase 3 — libfprint 集成**：
- 编写 libfprint 驱动
- 集成现有指纹算法

### 10.4 硬件连接信息（需确认）

从 ACPI 和 INF 推断的硬件连接：
- **SPI 总线** — 主通信接口
- **中断线** — GPIO 中断，用于手指检测
- **电源控制** — 可能通过 ACPI 电源管理
- **复位线** — GPIO 复位（常见于指纹传感器）

### 10.5 当前系统状态

```
SPI 设备:   /sys/bus/spi/devices/spi-GXFP51A0:00 → /dev/spidev1.0
内核:       7.0.14-arch1-1（无对应指纹驱动）
芯片:       Goodix GF3658 (Milan platform)
ACPI ID:    GXFP51A0 / GXFP51A7
ACPI 路径:  \_SB_.PCI0.SPI1.FPNT
```

---
## 11. Linux SPI 探测结果

### 11.1 SPI 设备绑定

```bash
# 加载 spidev 并绑定设备
modprobe spidev
echo "spidev" > /sys/bus/spi/devices/spi-GXFP51A0:00/driver_override
echo "spi-GXFP51A0:00" > /sys/bus/spi/drivers/spidev/bind
# → /dev/spidev1.0
```

### 11.2 ACPI 资源配置

从 DSDT 反编译得到的 FPNT 设备配置：

```
Device (FPNT) at \_SB_.PCI0.SPI1.FPNT
  _HID: GXFP51A0
  _CID: GXFP51A0
  _UID: 1

  SPI 配置:
    Mode:        Mode 0 (ClockPolarityLow, ClockPhaseFirst)
    线数:        4-Wire (MOSI, MISO, CLK, CS)
    速率:        10 MHz (0x00989680 = 10000000 Hz)
    数据位:      8 bits
    控制器:      \_SB.PCI0.SPI1 (pxa2xx-spi.4)

  GPIO 资源:
    GpioInt:    引脚由 GFPI 动态决定 (中断输入, ActiveHigh, Level)
                控制器 \_SB.PCI0.GPI0
    GpioIo:     引脚由 GFPS 动态决定 (输出, PullUp, 用于复位)
                控制器 \_SB.PCI0.GPI0

  ACPI 固件表:
    OperationRegion (HWFP, SystemMemory, FPAD, 0x0800)
    Field: FPDT (16384 bits = 2048 bytes fingerprint data)
    _DSM UUID: cc58b68a-4479-4893-a8bb-961209db59e5
      Function 0: 返回版本 (0x03)
      Function 1: 返回 FPDT 固件数据

  _INI 初始化:
    SHPO(GFPI, One) — 设置中断 GPIO 为高
    SHPO(GFPS, One) — 设置复位 GPIO 为高
```

### 11.3 SPI 通信行为

| 阶段 | 发送 | MISO 响应 | 说明 |
|------|------|-----------|------|
| 初始状态 | 0x00... | 0xFF... | 设备未驱动 MISO（高阻抗，上拉） |
| 首次非 0xFF 数据后 | 0xAA 0x55... | 0x00... | 设备进入活跃状态，驱动 MISO 为低 |
| 后续所有传输 | 任意 | 0x00... | 设备保持 MISO 低 |

**结论**：
- SPI 物理层通信正常，Mode 0 正确
- 设备在收到任意非 0xFF 数据后会进入活跃状态
- 设备可能处于未复位状态或需要先加载 MCU firmware applet

### 11.4 GPIO 引脚问题

- 全平台共 312 个 GPIO（控制器 INT34BB:00）
- 36 个输出引脚可能是复位线
- 未能在 ACPI DSDT 中直接解码 GFPS/GFPI 的实际引脚号
- GFPS/GFPI 值存储在 EMBED OperationRegion 中，由平台固件动态计算

### 11.5 .gxfg 段分析

- 不是 MCU 固件代码
- 包含 471 条 16 字节记录的结构化数据
- 格式: `{u32 index/size, u32 reserved(0), u64 hash/checksum}`
- 可能是指纹模板索引、校准数据哈希表或算法参数表
- 所有 8 字节哈希值都以 `0x70` 开头，疑似特定哈希算法输出

### 11.6 关键发现总结

1. **SPI 通信可行** — Mode 0, 10 MHz, 设备有响应
2. **MCU Applet 关键** — 没有 firmware applet，MCU 无法正常通信
3. **Applet 不在 DLL 中** — 驱动从文件系统加载 applet 文件
4. **Reset GPIO 未找到** — 需要在 36 个输出 GPIO 中定位复位引脚
5. **ACPI 固件表** — HWFP 区域含 2KB 指纹配置数据，可通过 _DSM 读取

### 11.7 GPIO Reset 测试结果

测试了全部 36 个输出 GPIO 作为复位引脚：

| GPIO 引脚 | 复位后 MISO 状态 | 说明 |
|-----------|-----------------|------|
| 36, 264, 311 | 驱动为低 (0x00) | **疑似复位引脚** — MCU 被拉出复位 |
| 其余 33 个 | 高阻抗 (0xFF) | MCU 仍处于复位或不响应状态 |

**GPIO 36 详细测试**：
- 100ms 复位脉冲 + 500ms 启动等待后，MCU 进入活跃状态
- 但 MCU boot ROM 不响应 STM32/GD/JEDEC 等任何标准协议
- 所有 SPI 通信返回全 0x00 或全 0xFF

### 11.8 固件嵌入式发现

**关键突破**：在 gfspi.dll 中发现了 ARM Cortex-M 固件的向量表！

`GF_ST411SEC_APP_14115` 字符串（偏移 0x000a8d01）后紧跟完整向量表：

```
SP        = 0x20020000
Reset     = 0x08033199  (Thumb, flash offset 0x33198)
NMI       = 0x080331e9  (default handler)
HardFault = 0x08025a35
...所有默认向量 = 0x080331e9
IRQ4      = 0x08025a41
```

该向量表在 DLL 中出现了 **17 次**（同一模式重复出现在不同代码路径中）。

**证据链**：
1. ARM Thumb 函数序言（`f8 b5` = `push {r3-r7,lr}`）出现在固件版本字符串周围
2. 向量表具有合法 ARM Cortex-M 地址（SP=0x20020000, PC=0x08033199）
3. 向量表在 DLL 中被多次引用（17 个相同副本）
4. 固件代码引用位于 `.text` 段（0x000bd300-0x000bd500 区域）

**问题**：固件不是连续二进制块存储在 DLL 中。它可能是：
- 被压缩后嵌入（未找到标准压缩头）
- 以分段形式分布在 `.rdata`（3MB）中
- 以 C 数组嵌入在 `.text` 代码段中

**.data 段矛盾**：磁盘上只有 12KB，但虚拟大小为 440KB — 固件可能在运行时被解压后放入 .data 的 BSS 区域。

### 11.9 阶段性结论

**已穷举的方法**：
1. ✅ SPI 物理层通信已建立（Mode 0, 10 MHz）
2. ✅ ACPI 设备资源配置已完全解码
3. ✅ 驱动架构和协议层次已清晰理解
4. ✅ IHA 协议层、WBDI 命令格式、SGX 飞地接口全部文档化
5. ✅ 固件版本标识 (ST411/HC460/MILAN) 和芯片型号 (GF3658) 已确认
6. ✅ 复位 GPIO 候选引脚已定位 (GPIO 36/264/311)
7. ❌ MCU boot ROM 协议非标准 — 需要专属固件 applet

**根本瓶颈**：MCU 需要专属 firmware applet 才能运行，applet 不在驱动 DLL 中，而是
由 Windows 驱动从文件系统加载。当前无 Windows 环境，无法：
- 提取 applet 文件
- 捕获 SPI 通信波形
- 动态调试驱动

**下一步**：
- **方案 A（最有效）**: 在有 Windows 的机器上用逻辑分析仪捕获 SPI 通信
- **方案 B**: 深入 Ghidra 反编译 IHA 加载函数，理解固件装配机制
- **方案 C**: 用 Ghidra GUI 手动追踪固件数据流
- 当前已有的分析文档已足够指导后续的 Linux 驱动开发工作

---
## 12. Ghidra 逆向分析成果

### 12.1 工具安装

- **Ghidra**: 12.1.2_PUBLIC (2026-06-05)，安装于 `/home/Populus/Projects/ghidra`
- **PyGhidra**: 3.1.0，通过 venv 安装，支持 Python 脚本分析
- **JDK**: OpenJDK 26.0.1

### 12.2 固件嵌入确认

通过 Ghidra headless + PyGhidra 分析 gfspi.dll 的 `.rdata` 段（3.1MB）：

| 发现 | 数量 | 说明 |
|------|------|------|
| `FpGGF_ST411SEC_APP_14115` 标记 | 17 个 | ARM Thumb 代码块（内容完全相同，编译器模板重复） |
| `GF_ST411SEC_APP_14115` + 向量表 | 34 个 | 固件描述符（完整中断向量表 64+ 条目） |
| `MILAN_HC460SEC_IAP_14102` | 1 个 | IAP 固件版本字符串 |
| `GF_HC460SEC_APP_14104` | 34 个 | HC460 固件描述符（含跳转表） |

### 12.3 ST411 固件向量表

完整的 ARM Cortex-M 中断向量表（从 `.rdata+0x2f16` 提取）：

```
SP          = 0x20020000     (RAM 基址)
Reset       = 0x08033199     (入口，flash 偏移 0x33198)
NMI         = 0x080331e9     (默认处理)
HardFault   = 0x08025a35
MemManage   = 0x080331e9
BusFault    = 0x080331e9
UsageFault  = 0x080331e9
SVCall      = 0x00000000     (未使用)
...
IRQ4        = 0x08025a41
IRQ5        = 0x08025b15
IRQ6        = 0x08025951
IRQ7        = 0x08025aa9
...（共约 64 个向量）
```

### 12.4 ARM Thumb 代码片段

每个代码片段周围包含可验证的 ARM Thumb 指令：
- `f8 b5` = `push {r3-r7, lr}` — 函数序言
- `f8 bc` / `08 bc` / `9e 46` — 函数尾声
- `70 47` = `bx lr` — 返回
- `00 bf` = `nop`

这些片段出现在 `.rdata` 段中，被 17 个不同的 x86-64 函数引用。

### 12.5 固件组装机制推断

1. 固件**不是**单一连续二进制块
2. 固件数据分散在 `.rdata` 段中，由 **IHA 层在运行时动态组装**
3. 17 个代码片段是编译器模板重复（相同的 ARM 代码嵌入到不同的 x86 函数中）
4. 没有代码直接通过符号引用固件字符串 — 使用运行时计算地址
5. 完整固件估计约 200KB+（基于 Reset handler 偏移 0x33198）

### 12.6 Ghidra 分析结论

**成功**：
- ✅ 确认 ARM 固件嵌入在 gfspi.dll 中
- ✅ 提取了完整的 ST411 中断向量表
- ✅ 定位了固件代码片段位置
- ✅ 识别了固件版本标识和芯片型号

**局限**：
- ❌ 无法直接提取完整固件（运行时动态组装）
- ❌ 需要深入反编译 IHA 加载函数才能理解装配逻辑
- ❌ Ghidra headless 脚本不支持直接 Python/Jython（需 PyGhidra venv）

---
## 13. ARM 固件模块反汇编分析

### 13.1 iha64.dll 分析

**文件**: `iha64.dll` (97KB) — Intel IPT IHA 协议层

- **PDB**: `C:\Program Files (x86)\Jenkins\jobs\5.0 Main Build\workspace\host\iha\iha\x64\Release\iha64.pdb`
- **导出**: 56 个函数，包括 IHA/IHA3 全部接口 + JNI 包装
- **关键函数**: `IHA_DoFWUpdate`, `IHA_InstallOTPS`, `IHA3_StartInstance`
- **不含 ARM 固件** — 纯 x86-64 协议栈

**IHA_InstallOTPS 反编译发现**：
- Applet 是 `.dalp` 格式（DAL Applet Package）
- Intel IPT 默认: `oath.dalp`（UUID `8D67D9DD2AF54717AFF2FF7EF19DFADB`）
- 从注册表 `HKLM\Software\Intel\Services\IPT\FILELOCALE` 读取路径

### 13.2 提取的 ARM 固件模块

从 gfspi.dll `.rdata` 提取的 6 个唯一 ARM Thumb-2 模块（总计 22KB）：

| 模块 | 大小 | 内容 |
|------|------|------|
| `fw_mod_01_bootstrap_1172.bin` | 1.2KB | **FPU 数学库** — 浮点乘法/累加，指纹算法核心 |
| `fw_mod_02_flash_ops_4242.bin` | 4.2KB | **Flash 操作** — 命令 3/4/5/6/9，Flash 擦写读 |
| `fw_mod_03_handlers_4306.bin` | 4.3KB | **中断处理器** — 事件处理，缓冲区管理 |
| `fw_mod_04_flash_v2_4112.bin` | 4.1KB | **Flash 操作 V2** — 命令 3-9 变体 |
| `fw_mod_05_flash_access_2201.bin` | 2.2KB | **Flash 访问层** — 内存映射验证 |
| `fw_mod_06_main_init_5878.bin` | 5.9KB | **主初始化** — 设备初始化，事件调度 |
| `fw_st411_vector_table_256.bin` | 256B | **ST411 中断向量表** — 64 条目 |

完整反汇编: `extracted_firmware/disasm/*.s`

### 13.3 固件地址 (ST411)

```
Flash 基址:    0x08000000
RAM 基址:      0x20000000
SP 初始值:     0x20020000 (8KB stack)
Reset 入口:    0x08033199 (~200KB firmware)
HardFault:     0x08025a35
默认 Handler:  0x080331e9
```

### 13.4 Flash 命令

| 命令 | 功能 |
|------|------|
| 3 | Flash 读取 |
| 4 | Flash 写入 |
| 5 | Flash 擦除 |
| 6 | Flash 验证 |
| 7 | Flash 保护 |
| 9 | Flash 状态查询 |

---
## 参考

- 驱动仓库路径: `C:\Windows\System32\DriverStore\FileRepository\gfspi.inf_amd64_cbf3264a9dc4fd92\`
- WinBioPlugins: `C:\Windows\System32\WinBioPlugins\`
- 运行时数据: `C:\ProgramData\Goodix\`
- INF 源文件: `C:\Windows\inf\oem11.inf`

## 14. MCU 身份与文档

### 14.1 MCU 真实身份

| 属性 | 值 |
|------|-----|
| 型号 | **Goodix GR5515IGND** (GR551x 系列) |
| 核心 | ARM Cortex-M4F @ 64MHz |
| 存储 | 256KB RAM, 1MB Flash |
| 封装 | QFN56 |
| 外设 | SPI ×2, UART ×2, QSPI ×2, GPIO, BLE 5.1 |
| 编程方式 | SWD (J-Link) / BLE DFU |
| 工厂烧录 | J-Link/SWD（GProgrammer 工具） |

**重要**: 这不是 STM32。GR5515 是 Goodix 自研 BLE SoC。

### 14.2 ROM Bootloader 启动流程

```
上电 → 0x00000000 → ROM Bootloader
  → 初始化 Flash → 读取 SCA (0x01000000)
  → 校验应用固件 (CRC/HMAC)
     ├── 通过 → 跳转固件 → SPI 从机启动 → 响应 IHA 命令
     └── 失败 → BLE DFU → 蓝牙广播 (传感器无天线，不可用)
```

**ROM Bootloader 仅支持 BLE DFU，不支持 SPI/UART。**

### 14.3 社区 SPI 协议（直接 MCU 协议）

社区发现的直接 SPI 帧格式（不同于 IHA）:
```
主机: cc f2 [seq] 82 — a0 [len] [cksum] — ae [len] [data] [cksum] — 00 00
RTR:  bb f1 00 00
从机: a0 [len] [cksum] — ae [len] [data] [cksum]
```

### 14.4 GR5515 DFU 协议

```
帧结构: 47 44 [type 2B LE] [len 2B LE] [data 0-2048B] [cksum 2B LE]

命令: 0x0023=Program Start  0x0024=Program Flash
      0x0025=Program End    0x002A=Config External Flash
      0x002B=Get Flash Info

注意: 此协议需要固件先运行，不能用于空白芯片。
```

---
## 参考

### 官方文档

- `GR551x_Developer_Guide_Rev.2.9.pdf` — Bootloader、Flash 布局、编程方法
- `GR551x_DFU_Application_Note_Rev.1.9.pdf` — DFU 协议（BLE + UART）
- `GR551x_Datasheet_Rev.3.0.pdf` — 硬件规格
- `GR551x_Hardware_Design_Guidelines_Rev.2.6.pdf` — 硬件设计
- `GR551x_Reference_Design_Rev.1.6/` — 参考原理图 (QFN56 等封装)
- `dynamic-application-loader_developer-guide_1.0.pdf` — Intel DAL 开发者指南
- `GProgrammer_Linux_x64_2.0.3/` — Goodix 官方烧录工具 (J-Link)

### 社区项目

- [goodix-fp-linux-dev/goodix-fp-dump](https://github.com/goodix-fp-linux-dev/goodix-fp-dump) — Python 驱动 + 烧录
- [egormanga/goodix-spi-protocol](https://github.com/egormanga/goodix-spi-protocol) — SPI 协议工具
- [owaink/libfprint Wiki](https://github.com/owaink/libfprint/wiki) — 协议文档 + 逆向指南
- [fwupd goodix-moc](https://github.com/fwupd/fwupd) — Linux 固件更新

### 开源参考

- [libfprint](https://gitlab.freedesktop.org/libfprint/libfprint) — Linux 指纹识别库
- [Linux 内核指纹驱动](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/drivers/input/fingerprint/)
