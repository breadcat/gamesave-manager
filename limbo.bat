set gamename=%~n0
dir /b "%programfiles(x86)%\steam\userdata" > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%programfiles(x86)%\steam\userdata\%userid%\48000\remote
call _global.cmd
