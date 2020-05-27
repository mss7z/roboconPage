@echo off
cd /d %~dp0
setlocal
set "exclusionFile=*.bat .gitignore *Template.html robots.txt"
set "exclusionDir=working .git"
if exist release\robots.txt (
	del release\robots.txt
)
robocopy . .\release /mir /xf %exclusionFile% /xd %exclusionDir%
ren .\release\robotsTemplate.txt robots.txt
endlocal