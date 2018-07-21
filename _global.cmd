
rem custom game symlinker script
rem this script expects the variables 'gamename' and 'gamesavedir' to be passed to it and called.

rem set current directory as destination
set savedir=%cd%

rem intro
echo off
title Game Save Symlinker
cls
if "saves\%gamename%" == "" goto error
if "%gamesavedir%" == "" goto error
if exist "%gamename%" goto existing
if not exist "%gamesavedir%" goto nosavedir
goto begin
exit

:existing
echo a directory for %gamename% already exists.
echo press any to recreate symlink.
pause > nul && goto begin

:nosavedir
echo %gamesavedir% doesn't exist, press any key to exit.
pause > nul && exit

:begin
echo We're ready to start, manually make a backup and press any key to begin
if not exist "saves\%gamename%" mkdir "saves\%gamename%"
if not exist "%gamesavedir%" mkdir "%gamesavedir%"
robocopy /E "%gamesavedir%" "saves\%gamename%"
rd /s /q "%gamesavedir%"
cmd /C mklink /J "%gamesavedir%" "saves\%gamename%"
if exist *.tmp del *.tmp
cls && echo moved savegames and set up symlink, press any key to exit.
pause > nul && exit

:error
echo missing either %%gamename%% or %%gamesavedir%% variables, press any key to exit.
pause > nul && exit

:eof
exit