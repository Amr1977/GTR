@echo off
rem delete these conflicting files
start cmd /c del-desktop-ini.cmd

set path=%~dp0;%~dp0\server_lib\libs;%path%
RD /Q /S temp
md temp

if exist %~dp0\update\server.jar ( 
 copy /y %~dp0\update\server.jar %~dp0\server.jar >nul 2>&1 
 del %~dp0\update\server.jar
 ping 127.0.0.1 -n 5 >nul
)
java -jar server.jar
pause