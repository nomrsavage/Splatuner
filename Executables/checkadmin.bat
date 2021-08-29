@echo off
rem checks admin, if true then continue. if not, then go back into eternal slumber
net session >nul 2>&1
    if %errorLevel% == 0 (

        echo Elevation requirements met.
    
    ) else (

    	cls
        echo ERROR: Elevation requirements not met. Try right clicking and running as administrator?
		pause
		exit
    
    )