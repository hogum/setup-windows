@echo off
curl -# -LOjk https://aka.ms/vs/17/release/vc_redist.x86.exe
start vc_redist.x86.exe
curl -# -LOjk https://aka.ms/vs/17/release/vc_redist.x64.exe
vc_redist.x64.exe
del vc_redist.x86.exe
del vc_redist.x64.exe