@echo off
curl --head -k https://cfacc.pages.dev/2dust/v2rayN/releases/latest | findstr "Location" > tmp
for /f "tokens=7 delims=/" %%a in (tmp) do set "latest=%%a"
for /f "delims=v" %%a in ("%latest%v") do set "latest=%%a"
del tmp
curl -# -LOjk https://cfacc.pages.dev/2dust/v2rayN/releases/download/%latest%/v2rayN-With-Core.zip
powershell Expand-Archive -Path v2rayN-With-Core.zip -DestinationPath %~dp0 -Force
del v2rayN-With-Core.zip