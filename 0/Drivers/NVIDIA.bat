@echo off
curl https://www.nvidia.cn/geforce/drivers/ | find "GFEClient" > tmp
for /f "tokens=2 delims='" %%a in (tmp) do set "url=%%a"
for /f "tokens=6 delims=/" %%a in ("%url%") do set "latest=%%a"
del tmp
curl -# -OL %url%
%latest%
del %latest%