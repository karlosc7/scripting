@echo off 
color 30 
title Calculadora-------creado por KarlosC 
:menu 
cls 
echo, 
echo, 
echo ---------------------------------- 
echo ---------------menu--------------- 
echo ---------------------------------- 
echo ---------------------------------- 
echo ------------- 1.SUMA ------------- 
echo ------------- 2.RESTA ------------ 
echo ------------- 3.MULTIPLICACION --- 
echo ------------- 4.DIVISION --------- 
echo ------------- 5.SALIR ------------ 
echo ---------------------------------- 
echo ---------------------------------- 
echo ---------------------------------- 
echo ---------------------------------- 
set/p opt= 
if %opt%==1 goto suma 
if %opt%==2 goto resta 
if %opt%==3 goto multiplicacion 
if %opt%==4 goto division 
if %opt%==5 goto s 

:suma 
cls 
set/p suma1=primer numero:: 
echo + 
set/p suma2=segundo numero::
echo ___________________ 
set/a suma3=%suma1%+%suma2% 
echo El resultado de la suma es:
echo resultado: %suma3% 
set/a suma3=%suma1%+%suma2% 
echo Pulse una tecla para volver al menu 
pause>nul 
goto:menu 

:resta 
cls 
set/p resta1=primer numero:: 
echo - 
set/p resta2=segundo numero:: 
echo ___________________ 
set/a resta=%resta1%-%resta2%
echo El resultado de la resta es: 
echo resultado: %resta% 
echo Pulse una tecla para volver al menu 
pause>nul 
goto menu 

:multiplicacion 
cls 
set/p multi1=primer numero:: 
echo x 
set/p multi2=segundo numero:: 
echo ___________________ 
set/a multi=%multi1% * %multi2% 
echo El resultado de la multiplicacion es:
echo resultado: %multi% 
echo Pulse una tecla para volver al menu 
pause>nul 
goto menu 

:division 
cls 
set/p divi1=primer numero::
echo __ 
set/p divi2=segundo numero::
echo ___________________ 
set/a divi=%divi1% / %divi2% 
echo El resultado de la division es:
echo resultado: %divi% 
echo Pulse una tecla para volver al menu 
pause>nul 
goto menu 

:s 
cls 
echo Esta seguro de que quiere salir? 
echo 1.Si(S) 
echo 2.No, volver(N) 
set/p opci= 
if%opci%== n goto volver 
if%opci%== s goto Menu Inicial 

:volver 
cls 
echo Ok, presione un tecla para volver al menu 
goto menu 


:sal 
cls 
echo OK, presione una tecla para salir 
Pause>nul 
exit