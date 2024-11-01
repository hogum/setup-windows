@echo off
curl -# -Lo office.zip "https://otp.landian.vip/redirect/download.php?type=runtime&site=sdumirror"
powershell Expand-Archive -Path office.zip -DestinationPath %~dp0 -Force
del office.zip