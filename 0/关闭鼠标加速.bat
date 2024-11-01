@echo off
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /d 0 /f
echo 重启后生效
ping 127.0.0.1 -n 3 >nul