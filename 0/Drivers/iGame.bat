@echo off
curl https://www.colorful.cn/tools/colorful_data.ashx?action=GetIgameCenter | findstr "iGameCenter" > tmp
for /f "tokens=5,6 delims=:," %%a in (tmp) do set "latest=%%a:%%b"
del tmp
curl -# -O %latest%
for /f "tokens=4 delims=/" %%a in ("%latest%") do set "latest=%%a"
%latest%
del %latest%