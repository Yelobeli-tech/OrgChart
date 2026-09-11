@echo off
if "%~1"=="hidden" goto :run

REM Not yet hidden: relaunch this same script via VBScript with the
REM console window hidden, then close this visible window immediately.
start "" wscript.exe "%~dp0Start OrgChart Maker.vbs"
exit

:run
cd /d "%~dp0"
node server.js
