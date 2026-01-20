# Netch 项目开发规则

## 技术栈

- **框架**: .NET 6.0
- **平台**: Windows 仅限 (`win-x64`)
- **语言**: C# (核心逻辑), C++ (Redirector/RouteHelper), PowerShell (构建脚本)

## 代码规范

- **C#**: 遵循标准的 Microsoft C# 编码惯例。
  - 类型显而易见时使用 `var`。
  - I/O 绑定操作使用 `async/await`。
  - 已启用可空引用类型 (`<Nullable>enable</Nullable>`)。
- **C++**: 遵循标准 C++ 惯例，确保 P/Invoke 的 ABI 兼容性。

## 构建系统

- **单一真理来源**: `build.ps1` 是主要的构建脚本。
- **产物**: 默认输出到 `release/` 目录。
- **依赖**: 项目依赖 `Storage` 和 `Other` 目录中的子模块或外部二进制文件。

## 架构

- **Netch**: 主 UI 和控制器 (WPF/WinForms)。
- **Redirector**: 流量拦截 (Redirector.vcxproj)。
- **RouteHelper**: 管理 Windows 路由表 (RouteHelper.vcxproj)。

## 提示

- 修改 `Netch` C# 代码时，请检查 `common.props` 中的共享属性。
- 处理互操作 (Interop) 时，请检查 `Redirector` 定义。
