@echo off
curl --head -k https://cfacc.pages.dev/Jessecar96/SteamDesktopAuthenticator/releases/latest | findstr "Location" > tmp
for /f "tokens=7 delims=/" %%a in (tmp) do set "latest=%%a"
for /f "delims=v" %%a in ("%latest%v") do set "latest=%%a"
del tmp
curl -# -LOjk https://cfacc.pages.dev/Jessecar96/SteamDesktopAuthenticator/releases/download/%latest%/SDA.%latest%.zip
powershell Expand-Archive -Path SDA.%latest%.zip -DestinationPath %~dp0\SDA.%latest% -Force
del SDA.%latest%.zip