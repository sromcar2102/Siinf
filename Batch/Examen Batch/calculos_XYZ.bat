@echo off

REM Hay que comprobar cual es el num mayor y cual el menor

if %1 lss %2 (
	set menor=%1
	set mayor=%2
) else (
	set menor=%2
	set mayor=%1
)

REM Ahora hago las operaciones en las variables

set /a suma=%1+%2
set /a resta=%mayor%-%menor%
set /a producto=%1*%2
set /a division=%mayor%/%menor%

REM Las vuelvo en el archivo resultado.txt
REM Uso las variables del sistema date y time para imprimir el dia y la hora

(echo Este script ha sido creado por Sandra Román el día %date% a las %time%
echo El resultado de la suma: %1 + %2 es %suma%
echo El resultado de la resta: %mayor% - %menor% es %resta%
echo El resultado del producto: %1 * %2 es %producto%
echo El resultado de la división: %mayor% / %menor% es %division% 
) > resultado.txt
