 ::cancelamos el eco para que no moleste 
@echo off 
::mostramos la ruta y el nombre de este bat 
echo estas ejecutando el archivo %0 
::si se nos paso algun parametro, lo mostramos if not "%1"=="" (
     echo pasaste el/los parametro/s %* 
) else (
     echo no pasaste ningun argumento al programa
) 
::espera que se pulse una tecla para terminar
pause
