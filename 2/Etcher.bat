@echo off
curl -I -k https://cfacc.pages.dev/balena-io/etcher/releases/latest | findstr "Location" > tmp
for /f "tokens=7 delims=/" %%a in (tmp) do set "latest=%%a"
for /f "delims=v" %%a in ("%latest%v") do set "latest=%%a"
del tmp
curl -# -LOjk https://cfacc.pages.dev/balena-io/etcher/releases/download/v%latest%/balenaEtcher-Portable-%latest%.exe