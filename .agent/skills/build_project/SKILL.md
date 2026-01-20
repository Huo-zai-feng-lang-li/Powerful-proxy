---
name: build_project
description: 使用主 PowerShell 脚本构建 Netch 项目，包括 C# 和 C++ 组件。
---

# 构建项目

此技能用于构建整个 Netch 解决方案，包括主 C# 应用程序和 C++ 辅助项目 (Redirector, RouteHelper)。

## 前置要求 (Prerequisites)

在使用此技能之前，请确保你的开发环境已通过 `PATH` 环境变量安装并配置了以下工具：

- **.NET 6.0 SDK**: 用于构建 C# 代码。
- **C++ 编译器 (MSVC)**: 用于构建 Redirector 和 RouteHelper。
- **Go (Golang)**: 用于构建 `Other/` 目录下的依赖项 (如 aiodns)。
- **7-Zip (7z)**: 用于解压或处理部分依赖。

如果缺少这些工具，构建过程中的依赖项编译将会失败。

## 用法

当你需要编译代码或创建发布产物时运行此技能。

## 步骤

1.  **执行构建脚本**:
    从项目根目录运行 `build.ps1` 脚本。

    ```powershell
    .\build.ps1 -Configuration Debug # 或 Release
    ```

    _选项_:
    - `-Configuration`: 'Debug' 或 'Release' (默认为 'Release')。
    - `-OutputPath`: 输出目录 (默认为 'release')。

## 示例

**构建发布版 (默认)**

```powershell
.\build.ps1
```

**构建调试版**

```powershell
.\build.ps1 -Configuration Debug
```
