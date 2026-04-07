@echo off
echo Installing context menu entries...
reg import "%~dp0commands.reg" >nul
echo Done!
pause
