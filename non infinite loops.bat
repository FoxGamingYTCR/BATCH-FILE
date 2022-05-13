@echo off
set a=1
set b=0
echo you can also use if '%b%'=='numbergoeshere' goto :2
:1
set /a b=%b%+%a%
if %b% equ 500 goto :2
echo welcome %username%%b%
goto :1
:2
echo loop ended at b = %b%
pause