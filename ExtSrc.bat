@ECHO OFF
CD %1
FOR /F %%G IN ('DIR /A:-D /B *.%2') DO ECHO %%G


