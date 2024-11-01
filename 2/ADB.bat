@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
curl -# -OL https://dl.google.com/android/repository/platform-tools-latest-windows.zip
powershell Expand-Archive -Path platform-tools-latest-windows.zip -DestinationPath %~dp0 -Force
del platform-tools-latest-windows.zip
md "C:\Program Files (x86)\ADB"
copy /Y %~dp0\platform-tools\*.* "C:\Program Files (x86)\ADB"
rd /S /Q %~dp0\platform-tools
curl -# -OL https://gitee.com/hogum/setup-windows/releases/download/Tools/Windows_Path.exe
Windows_Path.exe -path "C:\Program Files (x86)\ADB" -system 1
del %~dp0\Windows_Path.exe
