set gamename=%~n0
dir /b "%userprofile%\documents\my games\%gamename%\WillowGame\SaveData" > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%userprofile%\documents\my games\%gamename%\WillowGame\SaveData\%userid%
call _global.cmd
