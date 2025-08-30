@echo off
curl https://centbrowser.cn/ | find "x64.exe" > tmp
for /f "tokens=4 delims=/" %%a in (tmp) do set "latest=%%a"
del tmp
set URL=https://static.centbrowser.cn/win_stable/%latest%/centbrowser_%latest%_x64.exe
for /f %%i in ('curl --head -s -o nul -w "%%{http_code}" %URL%') do (
    if %%i==200 (
        curl -# -O https://static.centbrowser.cn/win_stable/%latest%/centbrowser_%latest%_x64.exe
    ) else (
        curl -# -O https://static.centbrowser.com/win_stable/%latest%/centbrowser_%latest%_x64.exe
    )
)
centbrowser_%latest%_x64.exe
del centbrowser_%latest%_x64.exe