@echo off
pushd "%~dp0tool\win-x64"  
PatchBundledGGPK3.exe "D:\POE2\content.ggpk" "C:\Users\cielt\Desktop\modded\ModV2\Mod.zip"
popd
pause