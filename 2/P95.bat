@echo off
curl https://www.mersenne.org/download/ | find "win64.zip" > tmp
for /f tokens^=22^ delims^=^" %%a in (tmp) do set "url=%%a"
for /f "tokens=6 delims=/" %%a in ("%url%") do set "latest=%%a"
del tmp
curl -# -OL %url%
powershell Expand-Archive -Path %latest% -DestinationPath %~dp0P95 -Force
del %latest%