@echo off
if not exist %1 (
    echo No existe el archivo pasado como parametro 
    pause
) else (
    type %1
    pause 
)
