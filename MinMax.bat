@ECHO OFF
:BegLoop
SET /P Numb=Enter new number
if %Numb% ==- goto ExitLoop
IF NOT DEFINED MIN SET MIN=%Numb%
IF NOT DEFINED MAX SET MAX=%Numb%
IF %Numb% LEQ %MIN% SET MIN=%Numb%
IF %Numb% GEQ %MAX% SET MAX=%Numb%
GOTO BegLoop
:ExitLoop
ECHO Min= %MIN%
ECHO Max= %MAX%
