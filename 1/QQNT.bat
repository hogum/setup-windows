@echo off
curl https://cdn-go.cn/qq-web/im.qq.com_new/latest/rainbow/windowsConfig.js | find "downloadUrl" > tmp
for /f tokens^=20^ delims^=^" %%a in (tmp) do set "url=%%a"
for /f "tokens=7 delims=/" %%a in ("%url%") do set "installer=%%a"
del tmp
curl -# -O %url%
%installer%
del %installer%