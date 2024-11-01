@echo off
curl -#L -o EpicGamesLauncherInstaller.msi https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi
EpicGamesLauncherInstaller.msi
del EpicGamesLauncherInstaller.msi