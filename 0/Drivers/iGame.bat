@echo off
curl https://www.colorful.cn/igamecenter/GetIgameCenter?versionClass=0 > tmp
for /f tokens^=10^ delims^=^" %%a in (tmp) do set "url=%%a"
for /f "tokens=4 delims=/" %%a in ("%url%") do set "latest=%%a"
del tmp
curl -# -e "https://www.colorful.cn/igamecenter/" -O %url%
%latest%
del %latest%