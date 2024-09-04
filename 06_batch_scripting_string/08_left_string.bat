@echo off
set str=Hello World
echo %str%
set str=%str:~0,5%
echo %str%
