# 1. Download the official Fido helper script from GitHub
Write-Host "Fetching the latest automated download script..." -ForegroundColor Cyan
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/pbatard/Fido/master/Fido.ps1" -OutFile "$env:TEMP\Fido.ps1"

# 2. Execute Fido to grab the URL and start the download
# This automatically fetches the latest stable Windows 11 x64 multi-edition in your system's language
Write-Host "Querying Microsoft servers for the latest Windows 11 ISO link..." -ForegroundColor Cyan

& "$env:TEMP\Fido.ps1" -Win 11 -Arch x64
