@echo off
curl https://www.nvidia.cn/software/nvidia-app/ | find "NVIDIA_app" > tmp
for /f "tokens=5 delims=/" %%a in (tmp) do set "latest=%%a"
del tmp
curl -# -H "Referer: https://www.nvidia.cn/" -O https://cn.download.nvidia.cn/nvapp/client/%latest%/NVIDIA_app_v%latest%.exe
NVIDIA_app_v%latest%.exe
del NVIDIA_app_v%latest%.exe