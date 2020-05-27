@echo off
cd /d %~dp0
setlocal
set "exclusionFile=*.bat .gitignore *Template.html robots.txt"
set "exclusionDir=working .git"
robocopy . .\release /mir /xf %exclusionFile% /xd %exclusionDir%
ren .\release\robotsTemplate.txt robots.txt
endlocal