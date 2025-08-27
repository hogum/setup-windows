@echo off
chcp 65001
curl -H "X-Requested-With: XMLHttpRequest" -d "id=43" https://www.acproaudio.com/index/choose/showfile.html > tmp
for /f "tokens=2 delims=}" %%a in (tmp) do set "latest=%%a"
for /f "tokens=4 delims=/" %%a in ("%latest%") do set "latest=%%~na"
del tmp
curl -# -O https://www.fmicassets.com/Damroot/Original/10111/%latest%
%latest%
del %latest%