@echo off

:loop

type lol.txt
timeout /nobreak /T 1 > NUL
cls

goto :loop