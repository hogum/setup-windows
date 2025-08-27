@echo off
set exe=C:\Program Files\Notepad++\notepad++.exe
curl --head -k https://acc.189168.xyz/notepad-plus-plus/notepad-plus-plus/releases/latest | find "Location" > tmp
for /f "tokens=2 delims=v" %%a in (tmp) do set "latest=%%a"
if exist "%exe%" (
	goto compare
) else del tmp
goto download
:compare
powershell "(Get-Item -path '%exe%').VersionInfo.ProductVersion" > tmp
set /p current=<tmp
del tmp
if %latest%==%current% (
	echo.
	echo 您使用的是最新版（%latest%）
	ping 127.0.0.1 -n 5 >nul
	exit
)
:download
echo 尚未安装最新版（%latest%），尝试安装中...
curl -# -LOjk https://acc.189168.xyz/notepad-plus-plus/notepad-plus-plus/releases/download/v%latest%/npp.%latest%.Installer.x64.exe
npp.%latest%.Installer.x64.exe
del npp.%latest%.Installer.x64.exe