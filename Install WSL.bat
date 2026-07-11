@echo off
:: Check for administrative privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrative privileges confirmed.
    echo Installing Windows Subsystem for Linux (WSL) and Ubuntu...
    echo -----------------------------------------------------------
    
    :: Install WSL and the default Ubuntu distribution
    wsl --install
    
    echo -----------------------------------------------------------
    echo Installation command complete. 
    echo A system restart is REQUIRED to finalize the setup.
    
    set /p choice="Would you like to restart your computer now? (Y/N): "
    if /i "%choice%"=="Y" (
        echo Restarting computer...
        shutdown /r /t 5
    ) else (
        echo Please remember to restart your computer manually to complete the setup.
        pause
    )
) else (
    echo ERROR: This script must be run as an Administrator.
    echo Please right-click the batch file and select "Run as administrator".
    pause
)
