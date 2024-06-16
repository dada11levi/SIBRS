@echo off
setlocal enableDelayedExpansion
cd /d "%~dp0"
echo You can minimize this window and Groove Music. To quit press CTRL+C or close the window.
:loop
set /a "i=0"
for %%f in (*.mp3) do (
    set /a "i+=1"
    set "list[!i!]=%%~f"
)
set /a min = 1
set /a max = 1800 / %i%
set /a rndNum=( %RANDOM% %% (%max% - %min% + 1) ) + %min%
timeout /t %rndNum% nobreak >nul
set /a rnd=%random% %%%i% +1
start "" "!list[%rnd%]!"
goto loop