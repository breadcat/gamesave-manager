set gamename=%~n0
dir /b "%userprofile%\documents\my games\%gamename%\willowgame\savedata" > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%userprofile%\documents\my games\%gamename%\willowgame\savedata\%userid%
call _global.cmd
