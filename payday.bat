set gamename=%~n0
dir /b %localappdata%\%gamename%\saves > %gamename%.tmp
set /p userid=<%gamename%.tmp
set gamesavedir=%localappdata%\%gamename%\saves\%userid%
call _global.cmd