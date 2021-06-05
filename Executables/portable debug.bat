@echo off
rem							okmrsavage's portable debug platform
rem						paste anywhere in batch file for terminal debug
rem									by okmrsavage (duh)
echo.

:okmrsavagesportablevariable
set /p okmrsavagesportablevariable=">"
%okmrsavagesportablevariable%
goto :okmrsavagesportablevariable
