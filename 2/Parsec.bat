@echo off
curl -# -O https://builds.parsec.app/package/parsec-windows.exe
parsec-windows.exe
del parsec-windows.exe