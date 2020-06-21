set gamename=%~n0
dir /b "%userprofile%\saved games\frontier developments\%gamename%" > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%userprofile%\saved games\frontier developments\%gamename%\%userid%\saves
call _global.cmd
