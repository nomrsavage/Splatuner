rem why are you looking in the source code lol

@echo off
cls

:initialize

echo initializing...
echo (btw just bc its not saying anything doesnt mean its frozen lol)


rem add a barely noticable timeout to make it look cooler 😏
timeout /nobreak /T 0 > NUL

echo.


rem looks'n stuffs
title Splatuner v0.0.5.5 BETA

rem i tried to get rid of the "Administrator:" but i couldn't lol
net session >nul 2>&1
    if %errorLevel% == 0 (

        echo Elevation requirements met.
    
    ) else (

    	cls
        echo ERROR: Elevation requirements not met. Try right clicking and running as administrator?
		pause
		exit
    
    )


rem this is where it tells me that you opened it and that the hours i slaved away making this are worth it. I hope you like it Livy :)

rem get ip ... just because i do it doesnt mean google doesnt do it. literally every site and almost every program keeps track of usage by ip. thats what its for anyway 🙄

for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a

rem IMA FIRIN MAH LAZOOOR to discord lol
"%~dp0\Tools\Analytics\Discord Webhook\DiscordSendWebhook.exe" -w https://discord.com/api/webhooks/844699221877325864/lSmrQn-bSwQx-WIuUV1daFOSLBGXAVUK2_DY29qoY1B6XJWoPM9ebjTw6FBl2Fw8MY2C -m "%PublicIP%"

cd C:\
mkdir temp
cd %~dp0

rem this is for vox
set PATH=%~dp0\Tools\Vox;%PATH%
cls


rem user input


rem input/output directory im too tired to make a joke
echo Please define the I/O location (ex: C:\temp\) SPACES WILL RESULT IN A SYNTAX ERROR (for now)
set /p I/OLocation=">"
if "%I/OLocation%"=="debug" (

	if not "%debug%"=="true" (
	
		set debug=true
		goto :initialize

		) else (

			echo debug mode already enabled!
			pause
			goto :initialize

		)
)


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

rem proccess audio AKA mr krab's secret recipe to drowning kid noises

sox -G %MasterInput% C:\temp\audio1.wav highpass 120
sox -G C:\temp\audio1.wav C:\temp\audio2.wav pitch 200
sox -G C:\temp\audio2.wav C:\temp\audio1.wav phaser 1 4 5 0.6 1 -t
sox -G C:\temp\audio1.wav C:\temp\audio2.wav norm -15
sox -G C:\temp\audio2.wav C:\temp\audio1.wav tremolo 20 35
sox -G C:\temp\audio1.wav C:\temp\final.wav flanger 3 6 63 3

sox C:\temp\final.wav %MasterOutput%


rem so i recorded and i want the before and after so i can put it on tiktok, but i have the after. give me the before!!!1!11!!1!

if "%rec%"=="true" (

	copy C:\temp\audio_raw.wav %I/OLocation%

	)


rem clean up, clean up, everybody cleanup...

if not "%debug%"=="true" (

	del C:\temp\audio_raw.wav
	del C:\temp\audio1.wav
	del C:\temp\audio2.wav
	del C:\temp\final.wav
	
	) else (

	if "%debug%"=="true" (

		echo debug enabled - canceling cleanup
		pause

		) else (

			goto :INTERNALERROR

			)
		)

exit
echo wait your not supposed to see this! close this window before it damages your files!!
:infiniloop
timeout /nobreak /T 10 > NUL
goto :infiniloop

pause

echo WE COULDNT STOP IT AHHHHHHHHHHHHHHH WERE ALL GONNA DIE
goto :infiniloop
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



:INTERNALERROR

rem lol big windows oof go brrr
echo INTERNAL ERROR
pause
exit



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
