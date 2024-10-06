@echo off
curl -# -OL https://gitee.com/hogum/setup-windows/releases/download/Tools/Xray633184.zip
powershell Expand-Archive -Path Xray633184.zip -DestinationPath %~dp0 -Force
del Xray633184.zip