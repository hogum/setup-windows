@echo off
curl --head https://startallback.com/download.php | find "Location" > tmp
for /f "tokens=2" %%a in (tmp) do set "url=%%a"
for /f "tokens=3 delims=/" %%a in ("%url%") do set "latest=%%a"
del tmp
curl -# -O %url%
%latest%
del %latest%