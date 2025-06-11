@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion


set PROJECT_DIR=E:\github\ai-web-service

REM 切换到项目目录
cd /d %PROJECT_DIR%

call docker-compose down
call docker-compose build
call docker-compose up -d

pause