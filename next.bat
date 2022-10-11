@echo off
title .
echo welcome %username%.
ping localhost /n 5 /l 0 >nul
set /a RAND=(%RANDOM%*17/32768)+1
set a=1
set b=0
set c=1
set d=0
set e=.
set f=.
:1
title loading%e%
echo loading%e%
ping localhost /n 1 /l 0 >nul
cls
set e=%e%%f%
set /a d=%d%+%c%
set /a b=%b%+%a%
if %d% equ 3 goto :2
if %b% gtr %RAND% goto :3
if %errorlevel% gtr 1 goto :4
goto :1
:2
if %b% gtr %RAND% goto :3
set c=1
set d=0
set e=.
set f=.
goto :1
:3
msg * done (this is just a test, feel free to use its code but please credit me)
exit
:4
msg * ERROR!!!
exit