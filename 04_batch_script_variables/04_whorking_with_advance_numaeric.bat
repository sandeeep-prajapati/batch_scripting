@echo off
SET /A a=5
SET /A b=10
SET /A c=%a% + %b%
echo %c%
SET /A c=%a% - %b%
echo %c%
SET /A c=%a% / %b%
echo %c%
SET /A c=%b% * %a%
echo %c%