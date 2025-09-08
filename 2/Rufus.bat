@echo off
curl -# -o rufus-p.exe https://acc.189168.xyz/rufus
mkdir rufus
move /y rufus-p.exe rufus
echo UpdateCheckInterval = -1>rufus\rufus.ini
start rufus\rufus-p.exe
