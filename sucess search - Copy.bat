@echo off
:wscript.echo InputBox("Enter your name")
findstr "^:" "%~sf0" | findstr /i /v ":label" >temp.vbs & for /f "delims=" %%N in ('cscript //nologo temp.vbs') do set name=%%N & del temp.vbs
echo You entered %name%
start brave --incognito --tor https://darksearch.io/search?query="%name%"





set "name=%name: =+%"

start brave --incognito --tor "https://ahmia.fi/search/?q=%name%"
start brave --incognito --tor https://onionsearchengine.com/search.php?search=%name%"&"submit=Search"&"rt=





pause
:label