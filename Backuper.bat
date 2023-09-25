@ECHO OFF
setlocal enabledelayedexpansion

IF NOT EXIST %2 MD %2

FOR /R %2 %%D in (.) DO (
    IF NOT DEFINED GlobPthDest (
        SET GlobPthDest=%%D
        CALL SET GlobPthDest=%%GlobPthDest:.=%%
    )
    DEL %%D
)

FOR /R %1 %%D in (.) DO (
    IF NOT DEFINED GlobPthRes (
        SET GlobPthRes=%%D
        CALL SET GlobPthRes=%%GlobPthRes:.=%%
      
    )
)
  XCOPY %GlobPthRes%* %GlobPthDest% /S