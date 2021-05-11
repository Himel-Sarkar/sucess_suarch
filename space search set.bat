@echo off
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A

set /p var=%BS% 
echo %var%
start brave --incognito --tor https://darksearch.io/search?query="%var%"
pause
exit /b
