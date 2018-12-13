@echo off
:Delete_Dommy_Files
echo Periodically Removing thumbs.db, desktop.ini and .DS_Store from folder tree...
del desktop.ini /S /A /F /Q  >nul 2>&1
del thumbs.db /S /A /F /Q  >nul 2>&1
del .DS_Store /S /A /F /Q  >nul 2>&1
echo Done.



