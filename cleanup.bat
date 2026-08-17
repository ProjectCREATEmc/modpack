@echo off
setlocal

echo Cleaning unnecessary Minecraft/modpack files...
echo.

REM Generated/runtime folders
if exist "minecraft\logs" rmdir /s /q "minecraft\logs"
if exist "minecraft\crash-reports" rmdir /s /q "minecraft\crash-reports"
if exist "minecraft\debug" rmdir /s /q "minecraft\debug"
if exist "minecraft\.mixin.out" rmdir /s /q "minecraft\.mixin.out"
if exist "minecraft\downloads" rmdir /s /q "minecraft\downloads"
if exist "minecraft\local" rmdir /s /q "minecraft\local"
if exist "minecraft\saves" rmdir /s /q "minecraft\saves"
if exist "minecraft\backups" rmdir /s /q "minecraft\backups"
if exist "minecraft\screenshots" rmdir /s /q "minecraft\screenshots"
if exist "minecraft\cache" rmdir /s /q "minecraft\cache"
if exist "minecraft\.cache" rmdir /s /q "minecraft\.cache"
if exist "minecraft\webcache" rmdir /s /q "minecraft\webcache"
if exist "minecraft\webcache2" rmdir /s /q "minecraft\webcache2"

REM Player-specific/runtime files
if exist "minecraft\command_history.txt" del /f /q "minecraft\command_history.txt"
if exist "minecraft\servers.dat_old" del /f /q "minecraft\servers.dat_old"

REM Uncomment these two if you DON'T want to ship player graphics/control settings
REM if exist "minecraft\options.txt" del /f /q "minecraft\options.txt"
REM if exist "minecraft\optionsof.txt" del /f /q "minecraft\optionsof.txt"

REM Java crash files
del /f /q "hs_err_pid*" 2>nul
del /f /q "replay_pid*" 2>nul

REM Common junk files
del /f /q ".DS_Store" 2>nul
del /f /q "Thumbs.db" 2>nul
del /f /q "desktop.ini" 2>nul

echo.
echo Cleanup complete.
pause