@echo off
setlocal enabledelayedexpansion


set baseDir="%cd%"
call:GetFileName fileName
set fullFileName="%baseDir:"=%\%fileName%"


if not exist %fullFileName% (
    echo not exist file, create it
    type nul > %fullFileName%
)
start /max notepad %fullFileName%

echo run success
goto:eof



:GetFileName 
for /F %%i in ('date /T') do (
    set originstr=%%i
)
set %1=cgb_%originstr:/=%.txt
goto:eof