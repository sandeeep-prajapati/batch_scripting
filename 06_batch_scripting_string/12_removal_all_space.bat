@echo off
set str=This string has a lot of spaces
echo %str%
set str=%str: =%
echo %str%