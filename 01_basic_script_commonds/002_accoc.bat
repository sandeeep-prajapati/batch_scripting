@echo off
pause
assoc > c:\list.txt
assoc | find ".doc" > c:\listsdoc.txt
pause