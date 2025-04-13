@echo off
chcp 65001 > nul
cls
title POE2 Mod Installer (Unicode Support)
color 0A

:menu
echo ==============================
echo    MENU CÀI ĐẶT MOD POE2
echo ==============================
echo.
echo 1. BASIC (Reveal map/ zoom / fog)
echo 2. REMOVE (Light , Effect , Grass, Shadow, Deadbody)
echo 3. BLACKSCREEN
echo 4. Thoát
echo.

set /p choice="Chọn (1-4): "
if "%choice%"=="1" goto basic
if "%choice%"=="2" goto remove
if "%choice%"=="3" goto blackscreen
if "%choice%"=="4" goto end

echo Lựa chọn không hợp lệ!
pause
goto menu

:basic
pushd "%~dp0tool\"
PatchBundledGGPK3.exe "D:\POE2\content.ggpk" "%~dp0basic.zip"
popd
goto success

:remove
pushd "%~dp0tool\"
PatchBundledGGPK3.exe "D:\POE2\content.ggpk" "%~dp0remove.zip"
popd
goto success

:blackscreen
pushd "%~dp0tool\"
PatchBundledGGPK3.exe "D:\POE2\content.ggpk" "%~dp0blackscreen.zip"
popd
goto success

:success
echo.
echo Cài đặt thành công!
pause
goto menu

:end
exit