@echo off
set str=Hello World
call :strLen str strlen
echo String is %strlen% characters long
exit /b
:strLen
setlocal enabledelayedexpansion
:strLen_Loop
 if not "!%1:~%len%!"=="" set /A len+=1 & goto :strLen_Loop
(endlocal & set %2=%len%)
goto :eof
