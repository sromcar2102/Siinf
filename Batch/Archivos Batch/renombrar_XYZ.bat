@echo off

set "archivo=%1"

if "%1"=="" (
    echo No se ha pasado el nombre del archivo a renombrar
    pause
) else if not exist "%archivo%" (
    echo El archivo no existe
    pause
) else (
    for /f "tokens=1,2 delims=\" %%u in ('whoami') do set "usuario=%%v"
    set "nuevo_nombre=%usuario%_%archivo%"
    ren "%archivo%" "%nuevo_nombre%"
    echo El archivo ha sido renombrado correctamente a %nuevo_nombre%
    pause
) 
