@echo off
curl -# -o ventoy.zip https://acc.189168.xyz/ventoy
powershell Expand-Archive -Path ventoy.zip -DestinationPath %~dp0 -Force
del ventoy.zip