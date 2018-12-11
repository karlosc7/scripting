::Automatizado del borrado del número en grandes cantidades de archivos, por ejemplo fotos. Véase..
::name[1].ext
::name[2].ext
::Para eliminar estos números que siempre son molestos, tenemos el siguiente script
@ECHO OFF
@REM Seleccionamos los números delimitados EN el directorio y HACEMOS borrado.
FOR /f "tokens=1,2,3 delims=[]" %%a IN ('dir /b *[1].*') DO REN %%a[%%b]%%c %%a%%c 