@echo off
title Number guessing game by Fox GamingYT
set /p name=Hello! what is your name? name-goes-here=
set /p ask1=Welcome %name%, would you like to play? yes or no=
if '%ask1%'=='Yes' goto :next
if '%ask1%'=='yes' goto :next
if '%ask1%'=='No' goto :exit
if '%ask1%'=='no' goto :exit
goto :exit
:next
cls
set /p ask2=Would you like to see instructions? yes or no=
if '%ask2%'=='Yes' goto :show
if '%ask2%'=='yes' goto :show
if '%ask2%'=='No' goto :top
if '%ask2%'=='no' goto :top
goto :exit
:top
cls
set NOT=0
set ADD=1
set /a RAND=(%RANDOM%*100/32768)+1
:restart
set /p guess=Guess a number from 1 to 100=
set /a NOT=%NOT%+%ADD%
if %guess% equ %RAND% goto :win
if %guess% gtr %RAND% goto :gtr
if %guess% lss %RAND% goto :lss
goto :exit
:win
echo You win! it took you %NOT% tries.
pause
cls
set /p ask1=Would you like to play again? yes or no=
if '%ask1%'=='Yes' goto :top
if '%ask1%'=='yes' goto :top
if '%ask1%'=='No' goto :exit
if '%ask1%'=='no' goto :exit
cls
goto :exit
:lss
echo Too low!
pause
cls
goto :restart
:gtr
echo Too high!
pause
cls
goto :restart
:show
echo You guess a number from 1 to 100 not knowing what it is, I'll tell you if you are too high or too low. you win IF you guess correct try to guess with the least amount of tries because I will tell you how many times you have tried.
pause
cls
goto :top
:exit
msg * goodbye %name%!
