@echo off
setlocal enableDelayedExpansion
set /a min = 300
set /a max = 1200
cd /d "%~dp0"
set /a "i=0"
for %%f in (*.mp3) do (
    set /a "i+=1"
    set "list[!i!]=%%~f"
)
echo You can minimize this window. To quit press CTRL+C or close the window.
:loop
set /a rndNum=( %RANDOM% %% (%max% - %min% + 1) ) + %min%
timeout /t %rndNum% /nobreak >nul
set /a rnd=%random% %%%i% +1
start "" "!list[%rnd%]!"
goto loop