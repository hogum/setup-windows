@echo off
curl -I -k https://cfacc.pages.dev/balena-io/etcher/releases/latest | find "Location" > tmp
for /f "tokens=2 delims=v" %%a in (tmp) do set "latest=%%a"
del tmp
curl -# -LOjk https://cfacc.pages.dev/balena-io/etcher/releases/download/v%latest%/balenaEtcher-%latest%.Setup.exe
balenaEtcher-%latest%.Setup.exe
del balenaEtcher-%latest%.Setup.exe