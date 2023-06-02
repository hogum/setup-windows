@echo off
curl https://adl.netease.com/d/g/uu/c/gw?type=pc | findstr /r "UU-[0-9.]*.exe" > tmp
for /f "tokens=2 delims==;" %%a in (tmp) do set "url=%%a"
del tmp
curl -# -O %url%
for /f "tokens=4 delims=/" %%a in ("%url%") do set "installer=%%a"
%installer%
del %installer%