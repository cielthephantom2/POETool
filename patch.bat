@echo off
chcp 65001 > nul
cls
title POE2 Mod Installer (Unicode Support)
color 0A

:: Đọc đường dẫn từ config.ini
set "ggpk_path="
for /f "usebackq tokens=1,* delims==" %%a in ("config.ini") do (
    if "%%a"=="ggpk_path" set "ggpk_path=%%b"
)

:: Loại bỏ dấu ngoặc kép nếu có trong file config
set ggpk_path=%ggpk_path:"=%

:: Kiểm tra xem đường dẫn có tồn tại không
if not exist "%ggpk_path%" (
    echo Không tìm thấy file content.ggpk tại: "%ggpk_path%"
    echo Vui lòng kiểm tra lại file config.ini
    pause
    exit /b 1
)

:menu
echo ==============================
echo    MENU CÀI ĐẶT MOD POE2
echo ==============================
echo.
echo 1. BASIC (Reveal map/ zoom / fog)
echo 2. REMOVE (Light , Effect , Grass, Shadow, Deadbody)
echo 3. PARTICLES
echo 4. Thoát
echo.

set /p choice="Chọn (1-4): "
if "%choice%"=="1" goto basic
if "%choice%"=="2" goto remove
if "%choice%"=="3" goto particles
if "%choice%"=="4" goto end

echo Lựa chọn không hợp lệ!
pause
goto menu

:basic
pushd "%~dp0tool\"
PatchBundledGGPK3.exe "%ggpk_path%" "%~dp0basic.zip"
popd
goto success

:remove
pushd "%~dp0tool\"
PatchBundledGGPK3.exe "%ggpk_path%" "%~dp0remove.zip"
popd
goto success

:particles
pushd "%~dp0tool\"
PatchBundledGGPK3.exe "%ggpk_path%" "%~dp0particles.zip"
popd
goto success

:success
echo.
echo Cài đặt thành công!
pause
goto menu

:end
exit