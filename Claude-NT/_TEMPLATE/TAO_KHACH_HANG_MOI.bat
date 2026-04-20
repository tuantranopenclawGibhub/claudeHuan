@echo off
chcp 65001 >nul
echo ============================================
echo   TAO THU MUC KHACH HANG MOI - Claude-NT
echo ============================================
echo.

set /p MA_KH=Nhap ma KH (vd: KH002):
set /p TEN_KH=Nhap ten khach hang (khong dau, gach duoi, vd: CONG_TY_XYZ):

set FOLDER_NAME=%MA_KH%_%TEN_KH%
set BASE_PATH=%~dp0..\DANG_TIEN_HANH\%FOLDER_NAME%

echo.
echo Dang tao thu muc: %FOLDER_NAME%

mkdir "%BASE_PATH%"
mkdir "%BASE_PATH%\BAO_GIA"
mkdir "%BASE_PATH%\HOP_DONG"
mkdir "%BASE_PATH%\TRAO_DOI"
mkdir "%BASE_PATH%\KY_THUAT"
mkdir "%BASE_PATH%\THANH_TOAN"

copy "%~dp0_PROFILE_KHACH_HANG.md" "%BASE_PATH%\_PROFILE_KHACH_HANG.md" >nul

echo.
echo [OK] Da tao xong thu muc: DANG_TIEN_HANH\%FOLDER_NAME%
echo [OK] Da copy file PROFILE mau vao thu muc
echo.
echo Buoc tiep theo:
echo   1. Mo file _PROFILE_KHACH_HANG.md va dien thong tin
echo   2. Them 1 dong vao _INDEX_TONG_HOP\INDEX_KHACH_HANG.csv
echo.
pause
