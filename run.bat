@echo off

set "SCRIPT_DIR=%~dp0"

start /B "" cmd /C "komorebi > NUL"

rem delay 500ms (lowest amount possible)
ping 127.0.0.1 -n 2 -w 500 > nul

komorebic load-custom-layout "%SCRIPT_DIR%layout.json"
komorebic container-padding 0 0 0
komorebic workspace-padding 0 0 0
rem komorebic toggle-focus-follows-mouse --implementation komorebi

komorebic float-rule exe winamp.exe
komorebic manage-rule exe cmd.exe
komorebic identify-tray-application exe Telegram.exe
