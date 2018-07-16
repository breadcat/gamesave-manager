set gamename=%~n0
dir /b "%ProgramFiles(x86)%\Steam\userdata" > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%ProgramFiles(x86)%\Steam\userdata\%userid%\218620\remote
call _global.cmd