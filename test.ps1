Write-Host "Hello from PowerShell"
$Targets = @("registry.npmmirror.com")
$DomesticDNS = "223.5.5.5"
Write-Host "Testing nslookup..."
$ips = (nslookup $Targets[0] $DomesticDNS | Select-String "Address: \s*(.*)" | ForEach-Object { $_.Matches.Groups[1].Value.Trim() } | Where-Object { $_ -match "^\d+\.\d+\.\d+\.\d+$" })
Write-Host "Found IPs: $ips"
