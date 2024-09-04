@echo off
set str=This message needs changed.
echo %str%
set str=%str:~-8%
echo %str%