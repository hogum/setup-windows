@echo off
curl https://im.qq.com/pcqq/index.shtml | find "qq-web.cdn-go.cn" > tmp
for /f tokens^=2^ delims^=^" %%a in (tmp) do set "url=%%a"
curl %url% | find "ntDownloadX64Url" > tmp
for /f "tokens=11 delims=," %%a in (tmp) do set "url=%%a"
for /f tokens^=3^ delims^=^" %%a in ("%url%") do set "url=%%a"
for /f "tokens=7 delims=/" %%a in ("%url%") do set "installer=%%a"
del tmp
curl -# -O %url%
%installer%
del %installer%