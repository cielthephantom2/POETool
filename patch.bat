@echo off
pushd "%~dp0tool\"  
PatchBundledGGPK3.exe "D:\POE2\content.ggpk" "%~dp0Mod.zip"
popd
pause