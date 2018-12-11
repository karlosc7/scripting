@echo off
::Inicializamos i en 0 
set i=0 
echo Piensa un numero entre 0 y 10... 
:rand 
set nmb=%random% 
::El número debe estar entre 0 y 10
if %nmb% GTR 10 goto rand
if %nmb% EQU 0 goto rand
echo Tienes tres intentos para acertar el numero!
:enter 
::Solicitamos numero al usuario
set /p "ent=Tu numero : " 
set /a i=%i%+1 
if %ent% EQU %nmb% ( 
echo Has acertado!
pause
exit 
::Tenemos tres intentos
) 
if %i% LSS 3 ( 
goto enter 
) 
if %i% EQU 3 ( 
echo Game Over:(
pause 
)