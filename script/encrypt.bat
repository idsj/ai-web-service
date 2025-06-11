@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

set PROJECT_DIR=E:\github\ai-web-service\pyarmor
set OUTPUT_DIR=%PROJECT_DIR%\encryption

REM 切换到加密目录，执行加密
cd /d %PROJECT_DIR%

REM 创建encryption目录，如果存在则删除，如果不存在则创建
if exist %OUTPUT_DIR% (
    rmdir /s /q %OUTPUT_DIR%
) 

mkdir %OUTPUT_DIR%

call docker-compose up -d --build
pause