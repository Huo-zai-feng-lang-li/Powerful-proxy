Set-Location (Split-Path $MyInvocation.MyCommand.Path -Parent)

# Use official v2ray-core instead of SagerNet fork (which has Linux-only gvisor dependency)
git clone https://github.com/v2fly/v2ray-core -b 'v5.22.0' src
if ( -Not $? ) {
    exit $lastExitCode
}
Set-Location src

$Env:CGO_ENABLED='0'
$Env:GOROOT_FINAL='/usr'

$Env:GOOS='windows'
$Env:GOARCH='amd64'

Write-Host "Building v2ray-sn (v2fly/v2ray-core)..."
go build -a -trimpath -asmflags '-s -w' -ldflags '-s -w -buildid=' -o '..\..\release\v2ray-sn.exe' '.\main'
exit $lastExitCode
