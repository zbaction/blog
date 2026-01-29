@echo off
title MicoBlog Server
echo Starting MicoBlog Server...
echo.
cd backend
if not exist "node_modules" (
    echo Installing dependencies...
    call npm install
)
if not exist "uploads" (
    mkdir uploads
)
echo.
echo Server is starting...
echo Access Blog: http://localhost:3001/blogs.html
echo Access Admin: http://localhost:3001/admin/admin.html
echo.
node server.js
pause