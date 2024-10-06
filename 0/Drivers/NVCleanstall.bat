@echo off
set url=https://www.techpowerup.com/download/techpowerup-nvcleanstall/
curl %url% | find "<title>NVCleanstall v" > tmp
for /f "tokens=2" %%a in (tmp) do set "latest=%%a"
for /f "tokens=1 delims=v" %%a in ("%latest%") do set "latest=%%a"
del tmp
set installer=NVCleanstall_%latest%.exe
if exist %installer% (
	start %installer%
	echo 已为您启动最新版安装包（%latest%），5秒后退出...
	ping 127.0.0.1 -n 5 >nul
	exit
) else echo 安装包不存在，尝试下载中...
set mirror=https://gitee.com/hogum/setup-windows/releases/download/Tools/%installer%
set curl="%{http_code}"
curl -LIw %curl% %mirror% | find "HTTP/1.1" > tmp
for /f "tokens=2" %%a in (tmp) do set "state=%%a"
del tmp
if %state%==200 (
	echo.
	echo 正在下载最新版（%latest%）...
	curl -# %mirror% -Lo %installer%
	start %installer%
	exit
)else echo 镜像非最新版（%latest%），已为您打开下载地址
start %url%
pause