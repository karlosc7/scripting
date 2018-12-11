@ECHO OFF
@REM ver informacion
::Simplemente es una muestra de datos del PC
@ECHO Algunos datos de tu PC
ECHO Fecha actual %DATE% 
ECHO Hora actual %TIME% 
ECHO Nombre del PC %COMPUTERNAME% 
ECHO Nombre del usuario %USERNAME% 
ECHO Directorio raiz del HD %SYSTEMROOT% 
ECHO Directorio en que te encuentras %CD%
ECHO Numero de procesadores %NUMBER_OF_PROCESSORS% 
@PAUSE