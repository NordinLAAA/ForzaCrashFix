echo off

d:
cd D:\Fora\Forza Horizon 5\Content\
start ForzaHorizon5.exe
taskkill /F /IM explorer.exe
start taskmgr.exe

:Option
echo -
ECHO Please type in the number according to the item you want to do:
ECHO 1. End Forza and Load Explorer
ECHO 2. Start Task Manager
ECHO 3. Stop explorer.exe (To continue with Forza so it doesn't crash)
ECHO 4. Load back explorer.exe
echo -
set /p op=Type option:
if "%op%"=="1" goto Finish
if "%op%"=="2" goto StartTask
if "%op%"=="3" goto Stop
if "%op%"=="4" goto Load

:Finish
ECHO "Ending Forza Horizon 5"
taskkill /F /IM ForzaHorizon5.exe
start explorer.exe
goto exit

:StartTask
Echo "Starting Task Manager"
start taskmgr.exe
goto Option

:Stop
ECHO "Stopping Explorer.exe"
taskkill /F /IM explorer.exe
goto Option

:Load
ECHO "Loading Explorer.exe"
start explorer.exe
goto Option

:exit
@exit


