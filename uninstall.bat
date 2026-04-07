@echo off
echo Removing context menu entries...

reg delete "HKCU\Software\Classes\SystemFileAssociations\.png\shell\ConvertToWebP" /f >nul 2>nul
reg delete "HKCU\Software\Classes\SystemFileAssociations\.webp\shell\ConvertToPNG" /f >nul 2>nul

echo Done!
pause
