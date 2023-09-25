@ECHO OFF
IF %1 LEQ 0 GOTO Ext
IF %1 GEQ 50 GOTO Ext
SET /A n=%1
SET /A f=%1
:BegLoop
IF %n%==1 GOTO Loop
Set/A n=n-1
Set/A f=f*n
GOTO BegLoop
:Loop
ECHO %1!=%f%
Exit /b
:Ext
ECHO Err.
Exit /b

PAUSE