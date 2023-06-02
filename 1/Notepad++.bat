@echo off
curl --head -k https://cfacc.pages.dev/notepad-plus-plus/notepad-plus-plus/releases/latest | findstr "Location" > tmp
for /f "tokens=7 delims=/" %%a in (tmp) do set "latest=%%a"
for /f "delims=v" %%a in ("%latest%v") do set "latest=%%a"
del tmp
curl -# -LOjk https://cfacc.pages.dev/notepad-plus-plus/notepad-plus-plus/releases/download/v%latest%/npp.%latest%.Installer.x64.exe
npp.%latest%.Installer.x64.exe
del npp.%latest%.Installer.x64.exe