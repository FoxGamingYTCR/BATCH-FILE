@echo off
:1
set /p text=enter text to write to the batch file=
echo %text% >> project.bat
echo %text% successfully written to your project!
pause
cls
goto :1