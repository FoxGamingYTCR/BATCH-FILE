@echo off
title preparing file...
set a=#
set b=#
set e==
set f==
set c=1
set d=0
:1
echo =%e%=
echo =%a%=
echo =%e%=
ping localhost /n 1 /l 0 >nul
set a=%a%%b%
set e=%e%%f%
set /a d=%c%+%d%
cls
if %d% equ 15 goto :2
goto :1
:2
start next.bat
exit