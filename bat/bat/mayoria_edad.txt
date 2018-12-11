cls
@echo off
setlocal enabledelayedexpansion

set /p fechanac=Escribe tu fecha de nacimiento:
set fechaactual=%date%

set dian=%fechanac:~0,2%
set diah=%fechaactual:~0,2%

 REM Hago la siguiente comprobacion para quitar el primer 0 del dia.
REM Sino lo quito, al hacer la resta me puede dar error, porque
REM interpretaria esos numeros como octales. Hacer la prueba a
REM restar los valores 09 y 03, y veras que sale un error 
 
if %dian:~0,1% equ 0 (
   set dian=%dian:~1,1%
)

REM Hago la misma comprobacion que antes
if %diah:~0,1% equ 0 (
   set diah=%diah:~1,1%
)


set mesn=%fechanac:~3,2%
set mesh=%fechaactual:~3,2%

REM Hago la misma comprobacion que para las variables dian y diah
if %mesn:~0,1% equ 0 (
   set mesn=%mesn:~1,1%
)
REM Hago la misma comprobacion que para las variables dian y diah
if %mesh:~0,1% equ 0 (
   set mesh=%mesh:~1,1%
)

set anion=%fechanac:~6,4%
set anioh=%fechaactual:~6,4%

echo %anion%     %anioh%    %mesn%     %mesh%

set /a restaanio=%anioh% - %anion%

set /a restames=%mesh% - %mesn%

set /a restadia=%diah% - %dian%



if %restaanio% gtr 18 (
     echo Eres mayor de Edad porque la resta de los anios es mayor de 18
) else (
     if %restaanio% lss 18 (
          echo Eres menor de Edad porque la resta de los anios es menor de 18
     ) else (
          if %restames% gtr 0 (
              echo Eres mayor de edad porque la resta del mes es mayor de 0
          ) else (
              if %restames% lss 0 (
                  echo Eres menor de edad porque la resta del mes es menor de 0
              ) else (
                  if %restadia% geq 0 (
                        echo Eres mayor de edad porque la resta del dia es mayor o igual que 0
                  ) else (
                        echo Eres menor de edad porque la resta del dia es menor que 0
                  )
              )
          )
     )
)

echo Tienes %restaanio% anios, %restames% meses y %restadia% dias 