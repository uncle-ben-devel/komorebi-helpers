@echo off

set APP_NAME=Komorebi
set APP_FOLDER=%APPDATA%\%APP_NAME%
set AUTO_START_FOLDER=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
set SHORTCUT_NAME=%APP_NAME%.lnk

rem Create the application folder if it doesn't exist
if not exist "%APP_FOLDER%" mkdir "%APP_FOLDER%"

rem Copy the required files to the application folder
copy launch-komorebi.vbs "%APP_FOLDER%\"
copy layout.json "%APP_FOLDER%\"
copy run.bat "%APP_FOLDER%\"

rem Create a shortcut in the Startup folder
set SHORTCUT_TARGET="%APP_FOLDER%\launch-komorebi.vbs"
set SHORTCUT_LOCATION="%AUTO_START_FOLDER%\%SHORTCUT_NAME%"
powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%SHORTCUT_LOCATION%'); $Shortcut.TargetPath = '%SHORTCUT_TARGET%'; $Shortcut.Save()"

echo %APP_NAME% has been installed to the Startup folder.

pause