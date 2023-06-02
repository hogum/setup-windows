@echo off
curl https://im.qq.com/pcqq | findstr "https://dldir1.qq.com/qqfile/qq/PCQQ" > tmp
for /f tokens^=4^ delims^=^" %%a in (tmp) do set "url=%%a"
del tmp
curl -# -O %url%
for /f "tokens=6 delims=/" %%a in ("%url%") do set "installer=%%a"
%installer%
del %installer%