: Call vs Start vs https://stackoverflow.com/questions/20698394/can-you-fork-in-windows-batch-file
@echo off

set Token=MAIN_%RANDOM%_%CD%
start bundle install
timeout 2
start "%Token%_1" cmd /c "jekyll build --watch"
timeout 2
start "%Token%_2" cmd /c "bundle exec jekyll serve"
timeout 2
explorer "http://127.0.0.1:4000"

:loop

ping -n 2 localhost >nul 2>nul
tasklist /fi "WINDOWTITLE eq %Token%_1" | findstr "cmd" >nul 2>nul && set Child1=1 || set Child1=
tasklist /fi "WINDOWTITLE eq %Token%_2" | findstr "cmd" >nul 2>nul && set Child2=1 || set Child2=
if not defined Child1 if not defined Child2 goto endloop
goto loop

:endloop
echo finished