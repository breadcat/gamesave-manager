set gamename=%~n0
dir /b "%userprofile%\saved games\id software\%gamename%\base\savegame.user\" > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%userprofile%\saved games\id software\%gamename%\base\savegame.user\%userid%
call _global.cmd