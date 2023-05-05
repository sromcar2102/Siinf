@echo off
if "%1" == "%2" (
    echo %1 es igual que %2
    pause
) else if "%1" LSS "%2" (
    echo %1 es menor que %2
    pause
) else if "%1" GTR "%2" (
    echo %1 es mayor que %2
    pause
)