@echo off
curl https://obsproject.com/download | findstr /r "OBS-Studio-[0-9.]*-Full-Installer-x64.exe" > tmp
for /f "tokens=3 delims=-" %%a in (tmp) do set "latest=%%a"
del tmp
curl -# -O https://cfacc.pages.dev/downloads/OBS-Studio-%latest%-Full-Installer-x64.exe
OBS-Studio-%latest%-Full-Installer-x64.exe
del OBS-Studio-%latest%-Full-Installer-x64.exe