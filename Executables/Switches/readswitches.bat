@echo off
set switch=0

for /f "delims=" %%i in (%~dp0switches.txt) do call :readswitches %%i

:readswitches
set switch=%1%


if "%switch%"=="-debug" (
	set debug=true
)

if "%switch%"=="-nosfm" (
	set nosfm=true
)

if "%switch%"=="-noraw" (
	set noraw=true

)

if "%switch%"=="-api" (
	set api=true
								rem delete this when function is finished
								cls
								echo invalid switch.
								echo the api function is not finished.
								echo to not mess with experimental features that may break things, please turn off the switch.
								pause
								exit

)

if "%switch%"=="-noadmin" (
	set noadmin=true

)



echo %debug%
echo %nosfm%
echo %noraw%
echo %api%
echo %noadmin%