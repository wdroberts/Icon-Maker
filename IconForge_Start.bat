@echo off
setlocal

set "HTML=D:\Documents\Software_Projects\Icon Maker\index.html"

if not exist "%HTML%" (
  echo Could not find:
  echo   %HTML%
  echo.
  echo Check the path or move this project back to its original folder.
  pause
  exit /b 1
)

start "" "%HTML%"
exit /b 0
