@echo off
title Youtube Downloader
:start

echo.                                   
echo ####################################
echo # /~~~@@~~~Youtube-to-Mp3~~~@@~~~\ #
echo # You can download whole Playlists #
echo ####################################
echo. 
echo 1. Download video and convert it to mp3.
echo 2. Close.
echo.

set /p input=Option:

IF %input% EQU 1 goto option_1

IF %input% EQU 2 exit

goto start

:option_1
set /p link=Youtube Link:
youtube-dl -i -x --audio-format mp3 --audio-quality 0 "%link%" -o "audio/%%(title)s.%%(ext)s"
echo.
echo Enter Youtube Link:
goto option_1

pause > nul
