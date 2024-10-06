@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
winget source remove winget
winget source add winget https://mirrors.ustc.edu.cn/winget-source --accept-source-agreements
ping 127.0.0.1 -n 3 >nul