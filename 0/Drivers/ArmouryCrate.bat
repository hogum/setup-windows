@echo off
curl -# -O https://dlsvr04.asus.com.cn/pub/ASUS/mb/14Utilities/ArmouryCrateInstallTool.zip
powershell Expand-Archive -Path ArmouryCrateInstallTool.zip -DestinationPath %~dp0 -Force
dir | find "ArmouryCrateInstaller" > tmp
for /f "tokens=4" %%a in (tmp) do set "dir=%%a"
del tmp
del ArmouryCrateInstallTool.zip
%dir%\ArmouryCrateInstaller.exe
rd /s /q %dir%