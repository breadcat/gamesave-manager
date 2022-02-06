set gamename=%~n0
dir /b "%userprofile%\documents\my games\%gamename%\Saved\SaveGames\" > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%userprofile%\documents\my games\%gamename%\Saved\SaveGames\%userid%
call _global.cmd
