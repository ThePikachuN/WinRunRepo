@echo off
:: Check for administrative privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrative privileges confirmed.
    echo Preparing to reboot into Windows Recovery Environment...
    timeout /t 3
     shutdown /r /o /t 0
) else (
    echo ERROR: This script must be run as an Administrator.
    echo Please right-click the batch file and select "Run as administrator".
    pause
)
    
   
