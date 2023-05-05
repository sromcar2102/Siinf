@echo off
set /p edad=Que edad tienes?

if %edad% LSS 10  (
    echo Eres muy joven
    pause
) else if %edad% GTR 10 if %edad% LSS 30 (
    echo Que mala edad tienes
    pause
) else if %edad% GTR 30 (
    echo Que bien te veo
    pause
)
