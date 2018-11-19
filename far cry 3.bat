set gamename=%~n0
dir /b "%ProgramFiles(x86)%\Ubisoft\Ubisoft Game Launcher\savegames" > "%gamename%.tmp"
set /p userid=<"%gamename%.tmp"
set gamesavedir=%ProgramFiles(x86)%\Ubisoft\Ubisoft Game Launcher\savegames\%userid%\46
call _global.cmd