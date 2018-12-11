@ECHO OFF
@REM ejemplo menú
::Cambio de color del terminal y letras
COLOR 3f
TITLE Menú básico

::Configuración del menú
:menu
CLS
::Mostramos directorio y menú
@ECHO Estamos en: %CD%
@ECHO Hola %USERNAME% aquí tienes el menú en fase de pruebas
ECHO.
ECHO ============  MENU  ============
ECHO.
      ECHO 0. Informacion del sistema
      ECHO 1. Ping a local
      ECHO 2. Conocer IP
      ECHO 3. Tracert
      ECHO 4. Netstat
      ECHO 5. Nslookup
      ECHO 6. Apagar sistema
      ECHO 7. Escanear disco
      ECHO 8. Salir

ECHO =================================
::solicitud de dato para seleccionar SI es una opción u otra
SET /p numero=Teclea un opcion (Ctrl + c para salir del menu):
@REM ECHO Tecleaste %numero%

::Redirección en el menú
IF %numero%==0 goto :informacion
IF %numero%==1 goto :conexion
IF %numero%==2 goto :miIP
IF %numero%==3 goto :Tracert
IF %numero%==4 goto :Netstat
IF %numero%==5 goto :Nslookup
IF %numero%==6 goto :apagar
IF %numero%==7 goto :escanear
IF %numero%==8 goto :fin
IF %numero% GTR 8 ECHO Error. Este no es un numero del menu.
GOTO :menu

::Solicitamos información del PC en un nuevo terminal
:informacion
@REM CALL miInfo
@START cmd /k systeminfo 
GOTO :menu

::Hacemos ping local en un nuevo terminal
:conexion
@START cmd /k ping localhost
GOTO :menu

::Mostramos ipconfig en un nuevo terminal
:miIP
@START cmd /k ipconfig /all
GOTO :menu

::Hacemos traceroute al host que nos indique el user en un nuevo terminal
:Tracert
SET /p host=Teclea host o IP:
@START cmd /k tracert %host%
GOTO :menu

::Abrimos un terminal para hacer netstat
:Netstat
@START cmd /k netstat -bo 10
GOTO :menu

::Abrimos nuevo terminal para hacer nslookup
:Nslookup
@START cmd /k nslookup
GOTO :menu

::Apagamos el equipo
:apagar
@REM shutdown -s -t 300 -c "Apagando sistema ..."
ECHO Apagando ...
GOTO :menu

::Hacemos un escaneado de disco
:escanear
@REM sfc /scannow
ECHO Escaneando disco ...
GOTO :menu

:fin

::Fin del programa
EXIT