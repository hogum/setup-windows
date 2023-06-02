@echo off
curl https://centbrowser.cn/index.html | findstr /r "centbrowser_[0-9.]*.exe" > tmp
for /f "tokens=4 delims=/" %%a in (tmp) do set "latest=%%a"
del tmp
curl -# -O https://static.centbrowser.cn/win_stable/%latest%/centbrowser_%latest%_x64.exe
centbrowser_%latest%_x64.exe
del centbrowser_%latest%_x64.exe