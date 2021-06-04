@echo off
rem							okmrsavage's portable debug platform
rem						paste anywhere in batch file for terminal debug
rem									by okmrsavage (duh)
echo.
:okmrsavagedebuglocation1
set /p okmrsavagedebugvar1=">"

if %okmrsavagedebugvar1%==^Z (
pause
)
%okmrsavagedebugvar1%

goto :okmrsavagedebuglocation1