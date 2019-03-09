set gamename=%~n0
dir /b "%userprofile%\documents\my games\%gamename%" > %gamename%.tmp
set /p userid=<%gamename%.tmp
set gamesavedir=%userprofile%\documents\my games\%gamename%\%userid%
call _global.cmd