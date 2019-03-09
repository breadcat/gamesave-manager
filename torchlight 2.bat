set gamename=%~n0
dir /b "%userprofile%\documents\my games\runic games\%gamename%\save" > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%userprofile%\documents\my games\runic games\%gamename%\save\%userid%
call _global.cmd