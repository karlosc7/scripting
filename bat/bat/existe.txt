@echo off
if not exist %1 (
copy %1 existe\file1.txt
) else(
echo el archivo %1 no existe
)
if exist %2(
copy %1 existe\file2.txt
) else(
echo el archivo %2 no existe
)
pause > nul