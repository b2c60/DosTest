echo off
cls
TITLE DISUAC
mode con:cols=60 lines=8
echo Disabling User Account Control...
%windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
IF %ERRORLEVEL% EQU 1 (
	ECHO ERROR: Could not disable User Account Control
	ECHO        Be sure to run as administrator
	ECHO.
) ELSE (
	ECHO Successful!
)
EXIT