@echo off
title 
set /p name=before we start, what is your name?=
echo hello %name%! I am chat bot.
set /p chata=hello, goodbye (select one)=
if '%chata%'=='hello' echo how are you?
if '%chata%'=='goodbye' msg * goodbye %name%! && exit
set /p chatb=good, bad (select one)=
if '%chatb%'=='bad' echo sorry to hear that...
if '%chatb%'=='good' echo thats good!
echo it appears i have run out of things to say, perhaps you could edit my code and add more? thank you %name%!
pause
cls