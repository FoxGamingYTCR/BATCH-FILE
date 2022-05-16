@echo off
:1
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> temp.vbs
set /p text=Text to speak=
echo speech.speak "%text%" >> temp.vbs
start temp.vbs
pause
del temp.vbs
goto :1