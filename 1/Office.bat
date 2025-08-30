@echo off
curl -# -o officetool.zip https://acc.189168.xyz/officetool
powershell Expand-Archive -Path officetool.zip -DestinationPath %~dp0 -Force
del officetool.zip