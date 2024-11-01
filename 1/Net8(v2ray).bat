@echo off
curl -# -O --ssl-no-revoke https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.ps1
powershell .\dotnet-install.ps1 -Channel 8.0 -Runtime windowsdesktop
del dotnet-install.ps1
ping 127.0.0.1 -n 5 >nul