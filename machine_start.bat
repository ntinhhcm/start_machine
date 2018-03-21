@ECHO OFF
ECHO %cd%

REM Link to configuration file
SET dir=%CD%\config

:main
FOR /f "tokens=1,2,3* delims= " %%a in (%dir%) do (
ECHO - %%a. %%b
)
ECHO Press 0 to quit
ECHO.
SET /P choice=Please choice machine:
IF %choice% EQU 0 GOTO :exit_

FOR /f "tokens=1,2,3* delims= " %%a in (%dir%) do (
	IF %%a EQU %choice% (
		ECHO %%c
		CD /D %%c
		BREAK
	)
)
GOTO :main
:exit_
EXIT