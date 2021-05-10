@echo off
Start "" chrome.exe "www.stackoverflow.com"
Call:Speak "Please subscribe to AstralWolf"
exit /b
::**********************************************
:Speak <msg>
(
    echo Set sapi=Createobject("sapi.spvoice"^)
    echo sapi.Speak("%~1"^)
)>"%tmp%\%~n0.vbs"
Cscript /nologo "%tmp%\%~n0.vbs"
Del "%tmp%\%~n0.vbs"
pause
exit /b
::**********************************************