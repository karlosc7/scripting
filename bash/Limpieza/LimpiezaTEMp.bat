@ echo :::::LIMPIEZA DE TEMPORALES:::::
@ echo ::::::::::::::::::::::::::::::::
@ echo :                              :
@ echo :         GAP Toledo::
@ echo :
@ echo :                              :
@ echo ::::::::::::::::::::::::::::::::

@ echo :::::::::Limpieza IE del usuario::::::::::::
del /q/s/a:r "%userprofile%\Cookies"
del /q/s/a:a "%userprofile%\Cookies"
del /q/s/a:h "%userprofile%\Cookies"
del /q/s "%userprofile%\Cookies\index.dat" > NUL
del /q/s/a:h "%userprofile%\.esiap"

@ echo :::::::::Limpieza Archivos temporales de internet del usuario::::::::::
del /q/s/a:r "%userprofile%\Config~1\Archivos temporales de Internet"
del /q/s/a:a "%userprofile%\Config~1\Archivos temporales de Internet"
del /q/s/a:h "%userprofile%\Config~1\Archivos temporales de Internet"
del /q/s/a:r "%userprofile%\Config~1\Archivos temporales de Internet\index.dat" > NUL
del /q/s/a:a "%userprofile%\Config~1\Archivos temporales de Internet\index.dat" > NUL
del /q/s/a:h "%userprofile%\Config~1\Archivos temporales de Internet\index.dat" > NUL
del /q/s "%userprofile%\Configuracion local\Archivos temporales de Internet\Content.IE5\index.dat" > NUL


@ echo :::::::::  BORRA TEMPORALES (INTERNET) DE UN USUARIO 
del "C:\Documents and Settings\%userprofile%\Configuraci¢n local\Archivos temporales de Internet\"*.* /S /Q /F
for /D %%a in ("C:\Documents and Settings\%username%\Configuraci¢n local\Archivos temporales de Internet\"*.*) do rmdir "%%a" /S /Q


@ echo :::::::::: BORRA TEMPORALES CARPETA CONTENT(CONTENT.IE5) DE UN USUARIO 
del "C:\Documents and Settings\%userprofile%\Configuraci¢n local\Archivos temporales de Internet\content.ie5\"*.* /S /Q /F
for /D %%a in ("C:\Documents and Settings\%username%\Configuraci¢n local\Archivos temporales de Internet\content.ie5\"*.*) do rmdir "%%a" /S /Q


@ echo :::::::::Limpieza de historial del usuario:::::::::
del /q/s "%userprofile%\Config~1\Historial\History.IE5\index.dat" > NUL
del /q/s/a:r "%userprofile%\Config~1\Historial"
del /q/s/a:a "%userprofile%\Config~1\Historial"
del /q/s/a:h "%userprofile%\Config~1\Historial"
rd /q "%userprofile%\Config~1\Historial"


@ echo :::::::::Limpieza carpeta temporal del usuario::::::::::
del /q/s/a:r "%userprofile%\Config~1\Temp"
del /q/s/a:a "%userprofile%\Config~1\Temp"
del /q/s/a:h "%userprofile%\Config~1\Temp"


@ echo ::::::::BORRA TEMP DE UN USUARIO
del "C:\Documents and Settings\%userprofile%\Configuraci¢n local\TEMP\"*.* /S /Q /F
for /D %%a in ("C:\Documents and Settings\%username%\Configuraci¢n local\TEMP\"*.*) do rmdir "%%a" /S /Q


@ echo :::::::::Limpieza logs y txt esiap del escritorio del usuario::::::::::::::::::::
del /q/s/a:r "%userprofile%\Escritorio\*.log
del /q/s/a:a "%userprofile%\Escritorio\*.log
del /q/s/a:h "%userprofile%\Escritorio\*.log
del /q/s/a:r "%userprofile%\Escritorio\*.txt
del /q/s/a:a "%userprofile%\Escritorio\*.txt
del /q/s/a:h "%userprofile%\Escritorio\*.txt



@ echo ::::::LIMPIEZA FINALIZADA:::::::

exit