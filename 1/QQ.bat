@echo off
curl https://im.qq.com/pcqq/index.shtml | find "qq-web.cdn-go.cn" > tmp
for /f tokens^=2^ delims^=^" %%a in (tmp) do set "url=%%a"
curl %url% | find "downloadUrl" > tmp
for /f "tokens=10 delims=," %%a in (tmp) do set "url=%%a"
for /f tokens^=3^ delims^=^" %%a in ("%url%") do set "url=%%a"
for /f "tokens=6 delims=/" %%a in ("%url%") do set "installer=%%a"
del tmp
curl -# -O %url%
%installer%
del %installer%