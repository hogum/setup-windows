@echo off
curl https://obsproject.com/download | findstr /r "downloads/OBS-Studio-[0-9.]*-Windows-Installer.exe" > tmp
for /f tokens^=2^ delims^=^" %%a in (tmp) do set "url=%%a"
for /f "tokens=4 delims=/" %%a in ("%url%") do set "latest=%%a"
del tmp
curl -# -O https://cfacc.pages.dev/downloads/%latest%
%latest%
del %latest%