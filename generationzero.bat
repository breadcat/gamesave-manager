set gamename=%~n0
dir /b "%userprofile%\documents\avalanche studios\%gamename%\saves" > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%userprofile%\documents\avalanche studios\%gamename%\saves\%userid%
call _global.cmd
