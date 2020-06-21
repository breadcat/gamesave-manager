set gamename=%~n0
dir /b "%userprofile%\documents\%gamename%"\profiles > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%userprofile%\documents\%gamename%\profiles\%userid%
call _global.cmd