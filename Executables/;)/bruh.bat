@echo off
set bruh="0"

:loop

echo %bruh%>>lol.txt
echo %bruh%
set /a bruh=%bruh%+1
goto :loop