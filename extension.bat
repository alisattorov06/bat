@echo off
setlocal

REM Yuklanadigan zip fayl manzili (URL)
set "ZIP_URL=https://drive.google.com/uc?export=download&id=1IqVg_vtvQ128XY-jL_aAPANnS9zUSjfQ"

REM ZIP fayl nomi va chiqish papkasi
set "ZIP_FILE=extension.zip"
set "EXTRACT_FOLDER=extension_unzipped"

echo Zip fayl yuklanmoqda...
powershell -Command "Invoke-WebRequest -Uri '%ZIP_URL%' -OutFile '%ZIP_FILE%'"

echo Zip fayl ochilmoqda...
powershell -Command "Expand-Archive -Force '%ZIP_FILE%' '%EXTRACT_FOLDER%'"

echo Chrome extension o'rnatish oynasi ochilmoqda...
start chrome.exe chrome://extensions

echo Tayyor! Endi 'Load unpacked' tugmasini bosib, quyidagi papkani tanlang:
echo %CD%\%EXTRACT_FOLDER%

pause
