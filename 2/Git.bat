@echo off
curl https://git-scm.com/downloads/win | find "64-bit.exe" > tmp
for /f tokens^=2^ delims^=^" %%a in (tmp) do set "url=%%a"
for /f "tokens=8 delims=/" %%a in ("%url%") do set "latest=%%a"
del tmp
curl -# -OL %url%
%latest%
del %latest%