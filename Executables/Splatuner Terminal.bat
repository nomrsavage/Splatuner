FF FE 0D 0A

rem lol you really tried that hard to get the source code. I mean, why? what twisted pleaseure does it give you?

@echo off
cls

echo initializing...
echo.

rem looks'n stuffs
title Splatuner

rem i tried to get rid of the "Administrator:" but i couldn't lol
net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Elevation requirements met.
    ) else (
    	cls
        echo ERROR: Elevation requirements not met. Try right clicking and run as administrator?
		pause
		exit
    )


cd C:\
mkdir Temp
cd %~dp0

rem this is for vox
set PATH=C:\Program Files (x86)\Splatuner\Splatuner\Tools\Vox;%PATH%
cls


rem user input


rem input/output directory im too tired to make a joke
echo Please define the I/O location (ex: C:\temp\) SPACES WILL RESULT IN A SYNTAX ERROR (for now)
set /p I/OLocation=">"

rem wait what am i even supposed to proccesss... i cant spell...
echo Please define the input name or type rec to record (ex: scream.wav)
set /p InputLocation=">"
if "%InputLocation%"=="rec" goto :rec

:postrec

rem where is output is be go? he lonely.
echo Please define the output name (ex: when_you_see_a_lake.wav)
set /p OutputLocation=">"

rem initialize

set MasterInput="%I/OLocation%%InputLocation%"
set MasterOutput="%I/OLocation%%OutputLocation%"
rem check if recorded if so change master input location to the recorded audio defined after recording
if "%rec%"=="true" set MasterInput=%InputLocation%

rem proccess audio

sox %MasterInput% C:\temp\audio1.wav highpass 120
sox C:\temp\audio1.wav C:\temp\audio2.wav pitch 468
sox C:\temp\audio2.wav C:\temp\audio1.wav phaser 1 4 5 0.6 1 -t
sox C:\temp\audio1.wav C:\temp\final.wav norm -19

sox C:\temp\final.wav %MasterOutput%
copy C:\temp\audio_raw.wav %I/OLocation%


exit
echo wait your not supposed to see this! close this window before it damages your files!!
timeout 99999 /nobreak
pause

:rec

echo rec
echo.


rem use this variable to make sure the recording is used
set rec=true

echo How long do you wish to record? (seconds)
set /p RecLength=">"
echo.

sox -t waveaudio -d C:\temp\audio_raw.wav trim 3 %RecLength%

set InputLocation="C:\temp\audio_raw.wav"

goto :postrec




rem experimental area

rem		
rem		
rem		
rem		
rem		
rem 	sox -t waveaudio -d D:\converted\audio.wave
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		echo %InputLocation%
rem 	pause
rem		echo %OutputLocation%
rem		echo %MasterInput%
rem		echo %MasterOutput%
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
rem		
