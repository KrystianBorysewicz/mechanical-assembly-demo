@echo off
REM Serves this folder over HTTP so the browser can load parts.fbx
REM (opening index.html directly via file:// is blocked by browser CORS).
cd /d "%~dp0"
echo Serving this folder at http://localhost:8000/
echo Opening your browser... close this window (or press Ctrl+C) to stop.
start "" http://localhost:8000/index.html
py -m http.server 8000 2>nul || python -m http.server 8000
