@echo off
cd /d %~dp0
title pythonServ
echo start!
echo stop to ctrl+C
python -m http.server 80