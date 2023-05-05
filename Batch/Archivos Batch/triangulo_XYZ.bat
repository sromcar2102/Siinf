@echo off
set texto=%1
for /l %%i in (1, 1, %2) do (
	echo.
	for /l %%j in (1, 1, %%i) do (
		echo | set /p = %texto%
	)
) 

for /l %%i in (%2, -1, 1) do (
	echo.
	for /l %%j in (2, 1, %%i) do (
		echo | set /p = %texto%
	)
) 
echo.
echo.
pause