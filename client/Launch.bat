@echo off
cd %~dp0
powershell -ExecutionPolicy Bypass -File "Installer.ps1"
pause
