@echo off
::color verde matrix
color 0a
setlocal enabledelayedexpansion
for /l %%a in (0,0,1) do (<nul set /p="!random!")
::"Ctrl+C" or cerrar la ventana