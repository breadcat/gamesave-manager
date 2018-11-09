
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
if exist *.tmp del *.tmp
pause > nul && goto begin

:nosavedir
echo %gamesavedir% doesn't exist, press any key to exit.
if exist *.tmp del *.tmp
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
echo Missing either %%gamename%% or %%gamesavedir%% variables.
if not exist "%programfiles%\7-zip\7z.exe" goto justexit
echo.
echo Would you like to use 7zip to create a backup of your saves directory?
echo Press any key to create this archive.
pause > nul
if not exist backups mkdir backups
for /f "skip=1 delims=" %%x in ('wmic os get localdatetime') do if not defined X set X=%%x
set dy=%X:~0,4%&&set dm=%X:~4,2%&&set dd=%X:~6,2%&&set dh=%X:~8,2%&&set dn=%X:~10,2%
"%programfiles%\7-zip\7z.exe" a -mx9 "backups\saves %dy%-%dm%-%dd%_%dh%%dn%.7z" "saves\"
echo backup created, press any key to exit
:justquit
pause > nul && exit

:eof
exit