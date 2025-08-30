@echo off
curl https://centbrowser.cn/ | find "x64.exe" > tmp
for /f "tokens=4 delims=/" %%a in (tmp) do set "latest=%%a"
del tmp
curl -# -O https://static.centbrowser.cn/win_stable/%latest%/centbrowser_%latest%_x64.exe
centbrowser_%latest%_x64.exe
del centbrowser_%latest%_x64.exe