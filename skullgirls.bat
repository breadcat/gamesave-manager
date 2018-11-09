set gamename=%~n0
dir /b "%userprofile%\documents\%gamename%\save data" > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%userprofile%\documents\%gamename%\save data\%userid%
call _global.cmd
