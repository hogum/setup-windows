@echo off
curl -I -k https://cfacc.pages.dev/ventoy/Ventoy/releases/latest | find "Location" > tmp
for /f "tokens=3 delims=v" %%a in (tmp) do set "latest=%%a"
del tmp
curl -# -LOjk https://cfacc.pages.dev/ventoy/Ventoy/releases/download/v%latest%/ventoy-%latest%-windows.zip
powershell Expand-Archive -Path ventoy-%latest%-windows.zip -DestinationPath %~dp0 -Force
del ventoy-%latest%-windows.zip