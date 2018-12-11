::Crea un .bat que solicite una extensión de archivo y elimine todos 
::los archivos con esa extensión de un determinado directorio
@ECHO OFF
::Solicitamos una variable que es la extensión
@ECHO Introduce la extensión de los archivos a eliminar
::Guardamos la variable
SET /p ext=Selecciona la extensión
PAUSE
::Eliminamos todos los archivos que contengan ext, es decir el valor de la variable
@ECHO Si desea eliminar los archivos pulse una tecla
DEL *%ext%
PAUSE
EXIT

