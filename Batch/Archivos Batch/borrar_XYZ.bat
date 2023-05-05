@echo off
if "%1" == "" (
    echo No se ha introducido ningun archivo como parametro
    echo Es necesario dar como parametro el archivo que se quiera borrar
    pause
) else if not exist "%1" (
    echo No existe el archivo pasado como parametro
    pause
) else (
    del "%1"
    echo El archivo se ha eliminado correctamente
    pause
)
