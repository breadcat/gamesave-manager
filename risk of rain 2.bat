set gamename=%~n0
dir /b "%programfiles(x86)%\steam\userdata" > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%programfiles(x86)%\steam\userdata\%userid%\632360\remote\userprofiles
call _global.cmd
