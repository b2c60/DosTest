@echo off
@For /F "tokens=1,2,3 delims=/ " %%A in ("%date%") do @( 
        Set Year=%%A
        Set Month=%%B
        Set Day=%%C
)
@echo. %Year%%Month%%Day%.log
:first


@For /F "tokens=1,2,3 delims=/ " %%A in ("%time%") do @( 
        Set Hour=%%A
        Set Min=%%B
        Set Sec=%%C
)
echo =============================================================================================== >>%Year%%Month%%Day%.log
@echo. %Hour%%Min%%Sec% >>%Year%%Month%%Day%.log
echo =============================================================================================== >>%Year%%Month%%Day%.log
@echo. 
ocusbvid_test 0 --test >>%Year%%Month%%Day%.log
@echo. >>%Year%%Month%%Day%.log
goto first
