@echo off
:top
title Crack the code! easy
set /p name=before we begin, what is your name?=
echo Welcome %name%!!!
pause
set /p confirm=Would you like to see instructions? yes or no=
if '%confirm%'=='yes' goto :instructions
if '%confirm%'=='Yes' goto :instructions
if '%confirm%'=='no' goto :play
if '%confirm%'=='No' goto :play
goto :exit
:instructions
echo You play by trying to guess the code, if you guess correctly you will unlock one or multiple numbers. the numbers are 1 to 9
pause
:play
set tries=0
set add=1
set /a RAND=(%RANDOM%*9/32768)+1
set num1=%RAND%
set /a RAND=(%RANDOM%*9/32768)+1
set num2=%RAND%
set /a RAND=(%RANDOM%*9/32768)+1
set num3=%RAND%
set /a RAND=(%RANDOM%*9/32768)+1
set num4=%RAND%
set /a RAND=(%RANDOM%*9/32768)+1
set num5=%RAND%
set /a RAND=(%RANDOM%*9/32768)+1
set num6=%RAND%
set /a RAND=(%RANDOM%*9/32768)+1
set num7=%RAND%
set code=%num1%%num2%%num3%%num4%%num5%%num6%%num7%
set show1=0
set show2=0
set show3=0
set show4=0
set show5=0
set show6=0
set show7=0
set reveal=%show1%%show2%%show3%%show4%%show5%%show6%%show7%
echo example code %reveal%
:guess
set /p guess=guess the code=
set /a tries=%tries%+%add%
if '%guess%'=='%num1%' set show1=%num1%
if '%guess%'=='%num2%' set show2=%num2%
if '%guess%'=='%num3%' set show3=%num3%
if '%guess%'=='%num4%' set show4=%num4%
if '%guess%'=='%num5%' set show5=%num5%
if '%guess%'=='%num6%' set show6=%num6%
if '%guess%'=='%num7%' set show7=%num7%
set reveal=%show1%%show2%%show3%%show4%%show5%%show6%%show7%
cls
echo %reveal%
if '%reveal%'=='%num1%%num2%%num3%%num4%%num5%%num6%%num7%' goto :win
goto :guess
:win
echo you got the code in %tries% tries
echo tries %tries%, easy mode, code %code%, name %name% >> logs.txt
echo the code is %code%
set /p answer=would you like to play again?=
cls
if '%answer%'=='yes' goto :play
if '%answer%'=='Yes' goto :play
if '%answer%'=='no' goto :exit
if '%answer%'=='No' goto :exit
:exit