@echo off
cd latest
for /r %%i in (*.xml) do copy /b %%i +,, 
cd ..
copy .\latest\*.xml .\xml
del latest\*.xml /S /A /F /Q  >nul 2>&1