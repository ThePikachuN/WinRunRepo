# 1. Download the official Fido helper script from GitHub
Write-Host "Fetching the latest automated download script..." -ForegroundColor Cyan
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/pbatard/Fido/master/Fido.ps1" -OutFile "$env:TEMP\Fido.ps1"

# 2. Execute Fido for Windows 10
# This fetches the latest stable Windows 10 x64 multi-edition ISO
Write-Host "Downloading Windows 10 ISO... This may take 10 minutes..." -ForegroundColor Cyan

& "$env:TEMP\Fido.ps1" -Win 10 -Arch x64
