@echo off
title math in batch file
:top
set /p a=number1=
set /p type=type of math -, +, /, * add another number if you feel like it by doing +7* or anything like it=
set /p b=number2=
set /a calc=%a%%type%%b%
echo %calc%
pause
cls
goto :top