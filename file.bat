@echo off
setlocal enabledelayedexpansion

:: Detect system language
for /f "tokens=3 delims= " %%a in ('reg query "HKLM\System\CurrentControlSet\Control\Nls\Language" /v Installlanguage') do set "lang=%%a"

color 02

:: Enable Network Discovery and File and Printer Sharing
if "%lang%"=="0419" (
    set "ND=Обнаружение сети"
    set "FPS=Общий доступ к файлам и принтерам"
    set "Everyone=Все"
) else (
    set "ND=Network Discovery"
    set "FPS=File and Printer Sharing"
    set "Everyone=Everyone"
)

netsh advfirewall firewall set rule group="!ND!" new enable=Yes
netsh advfirewall firewall set rule group="!FPS!" new enable=Yes

:: Modify registry for remote access
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "LocalAccountTokenFilterPolicy" /t REG_DWORD /d 1 /f

:: Grant permissions and create share for C:\Users
icacls "C:\Users" /grant !Everyone!:(OI)(CI)F /T /Q
net share Users="C:\Users" /grant:!Everyone!,FULL

:: Set network profile to Private
powershell -ExecutionPolicy Bypass -Command "Get-NetConnectionProfile | Set-NetConnectionProfile -NetworkCategory Private"

echo Script completed successfully.
pause
exit /b 0
