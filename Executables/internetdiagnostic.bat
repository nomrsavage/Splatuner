rem internet connection check by okmrsavage

@echo off
ping -n 2 -w 700 8.8.8.8 | find "bytes="
IF %ERRORLEVEL% EQU 0 (
    SET internet=true
) ELSE (
    SET internet=false
)
