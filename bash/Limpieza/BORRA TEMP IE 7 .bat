@rem ARCHIVOS TEMPORALES DE INTERNET
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
@rem COOKIES
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
@rem HISTORIAL
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
@rem FORMULARIOS
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
@rem ELIMINA passwords almacenados.
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
@rem Elimina todo
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
@rem Elimina todo, incluso los ficheros borrados.
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 4351