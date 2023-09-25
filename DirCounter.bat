@ECHO OFF
SET /A Cou=0
FOR /R %1 %%f IN (.) DO SET /A Cou+=1
SET /A Cou-=1
ECHO %Cou%