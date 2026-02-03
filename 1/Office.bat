@echo off
curl -#L -o officetool.zip https://otp.landian.vip/redirect/download.php?type=runtime&arch=x64
powershell Expand-Archive -Path officetool.zip -DestinationPath %~dp0 -Force
del officetool.zip