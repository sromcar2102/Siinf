@echo off

if "%1"=="" (
    echo No se ha introducido ningun parametro
    exit /b 1
)

set "archivo=%1"

if not exist "%archivo%" (
    echo El archivo no existe
    exit /b 1
)

for /f "tokens=1,2 delims=\" %%u in ('whoami') do set "usuario=%%v"
set "nuevo_nombre=%usuario%_%archivo%"
ren "%archivo%" "%nuevo_nombre%"
echo El archivo ha sido renombrado correctamente a %nuevo_nombre%.
echo. 
pause