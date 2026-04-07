@echo off
chcp 65001 >nul

echo Installing context menu entries...

:: PNG -> WebP (cascading submenu)
reg add "HKCU\Software\Classes\SystemFileAssociations\.png\shell\ConvertToWebP" /v "MUIVerb" /d "Конвертировать в WebP" /f >nul
reg add "HKCU\Software\Classes\SystemFileAssociations\.png\shell\ConvertToWebP" /v "Icon" /d "imageres.dll,67" /f >nul

reg add "HKCU\Software\Classes\SystemFileAssociations\.png\shell\ConvertToWebP\shell\01_q95" /v "MUIVerb" /d "Заебок (95%)" /f >nul
reg add "HKCU\Software\Classes\SystemFileAssociations\.png\shell\ConvertToWebP\shell\02_q80" /v "MUIVerb" /d "Долбит нормально (80%)" /f >nul
reg add "HKCU\Software\Classes\SystemFileAssociations\.png\shell\ConvertToWebP\shell\03_q50" /v "MUIVerb" /d "Шакал (50%)" /f >nul
reg add "HKCU\Software\Classes\SystemFileAssociations\.png\shell\ConvertToWebP\shell\04_q10" /v "MUIVerb" /d "Ультра-Шакал (10%)" /f >nul

:: WebP -> PNG
reg add "HKCU\Software\Classes\SystemFileAssociations\.webp\shell\ConvertToPNG" /ve /d "Конвертировать в PNG" /f >nul
reg add "HKCU\Software\Classes\SystemFileAssociations\.webp\shell\ConvertToPNG" /v "Icon" /d "imageres.dll,67" /f >nul

:: Import SubCommands and command values (quotes must come from .reg file)
reg import "%~dp0commands.reg" >nul

echo Done!
pause
