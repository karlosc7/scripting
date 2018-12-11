for /l %%i in (0,1,99) do call:rand %%i
for /f "tokens=3 delims=_=" %%i in ('set rand_') do echo %%i
goto:eof
:rand
set rand_%random%%random%=%1 
pause