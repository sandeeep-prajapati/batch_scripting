@echo off
set str=this message needs to Changed
echo %str%
set str=%str:needs=has%
echo %str%