::Crea un .bat que cree un archivo, haga una copia de �l con otro nombre,
::luego lo mueva a otro directorio y borre el original.
::cancelamos el eco para que no moleste 
@ECHO OFF 
ECHO Pulse tecla para crear TXT
PAUSE
::Con esto crear�amos el archivo
@ECHO "Esto es un ejemplo">ejemplo.txt 
@ECHO El archivo ha sido creado
PAUSE
::Si existe el archivo lo copiamos
IF EXIST ejemplo.txt COPY ejemplo.txt \ejemplocopy.txt
@ECHO El archivo ha sido copiado
PAUSE
::Si existe el archivo lo movemos
IF EXIST ejemplocopy.txt MOVE ejemplocopy.txt \desktop
@ECHO El archivo ha sido movido
PAUSE
@ECHO Pulse una tecla para borrar el primer archivo
DEL ejemplo.txt
CD C:\
PAUSE
EXIT