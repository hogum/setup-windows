@echo off
set url=https://lrepacks.net/repaki-sistemnyh-programm/63-repack-winrar-amp-portable.html
curl --ssl-no-revoke %url% | find "(Repack &amp; Portable)</h2>" > tmp
for /f "delims=>( tokens=2" %%a in (tmp) do set "latest=%%a"
for /f "tokens=2" %%a in ("%latest%") do set "latest=%%a"
powershell "(Get-Item -path 'C:\Program Files\WinRAR\WinRAR.exe').VersionInfo.ProductVersion" > tmp
for /f "delims=. tokens=1,2" %%a in (tmp) do set "current=%%a.%%b"
del tmp
if %latest%==%current% (
	echo.
	echo 您使用的是最新版（%latest%）
	ping 127.0.0.1 -n 5 >nul
	exit
)else echo 尚未安装最新版（%latest%），尝试安装中...
set installer="WinRAR %latest%.exe"
if exist %installer% (
	%installer% /SILENT
	del %installer%
	exit
) else echo 安装包不存在，尝试下载中...
set mirror=https://gitee.com/hogum/setup-windows/releases/download/Software/WinRAR%%20%latest%.exe
set curl="%{http_code}"
curl -LIw %curl% %mirror% | find "HTTP/1.1" > tmp
for /f "tokens=2" %%a in (tmp) do set "state=%%a"
del tmp
if %state%==200 (
	echo.
	echo 正在下载并安装最新版...
	curl -# %mirror% -Lo %installer%
	%installer% /SILENT
	del %installer%
	exit
)else echo 镜像非最新版，已为您打开下载地址
echo 当前镜像链接为：%mirror%
start %url%
pause