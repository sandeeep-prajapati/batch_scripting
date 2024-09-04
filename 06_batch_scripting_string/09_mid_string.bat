@echo off
set str=Helloworld
echo %str%
set str=%str:~5,10%
echo %str%
