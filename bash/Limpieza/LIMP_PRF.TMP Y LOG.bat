?@ echo :::::::::Limpieza logs y prf del escritorio del usuario::::::::::::::::::::

@ echo Limpieza de logs Esiap

del /q/s/a:r "C:\Documents and Settings\%username%\Escritorio\esiap.log
del /q/s/a:a "C:\Documents and Settings\%username%\Escritorio\esiap.log
del /q/s/a:h "C:\Documents and Settings\%username%\Escritorio\esiap.log

del /q/s/a:r "C:\Documents and Settings\%username%\Escritorio\esiap.log.?
del /q/s/a:a "C:\Documents and Settings\%username%\Escritorio\esiap.log.?
del /q/s/a:h "C:\Documents and Settings\%username%\Escritorio\esiap.log.?

del /q/s/a:r "C:\Documents and Settings\%username%\Escritorio\esiap_log_configurado.log
del /q/s/a:a "C:\Documents and Settings\%username%\Escritorio\esiap_log_configurado.log
del /q/s/a:h "C:\Documents and Settings\%username%\Escritorio\esiap_log_configurado.log

del /q/s/a:r "C:\Documents and Settings\%username%\Escritorio\esiap_log_configurado.log.?
del /q/s/a:a "C:\Documents and Settings\%username%\Escritorio\esiap_log_configurado.log.?
del /q/s/a:h "C:\Documents and Settings\%username%\Escritorio\esiap_log_configurado.log.?

del /q/s/a:r "C:\Documents and Settings\%username%\Escritorio\hs_err_pid*.log
del /q/s/a:a "C:\Documents and Settings\%username%\Escritorio\hs_err_pid*.log
del /q/s/a:h "C:\Documents and Settings\%username%\Escritorio\hs_err_pid*.log

del /q/s/a:r "C:\Documents and Settings\%username%\prf*.tmp
del /q/s/a:a "C:\Documents and Settings\%username%\prf*.tmp
del /q/s/a:h "C:\Documents and Settings\%username%\prf*.tmp

exit