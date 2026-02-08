@echo off
echo ====================================
echo Public Safety Monitoring - Backend
echo ====================================
echo.

cd /d "%~dp0backend"

echo Checking Python installation...
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python 3.8+ from https://www.python.org/
    pause
    exit /b 1
)

echo.
echo Checking if dependencies are installed...
pip show fastapi >nul 2>&1
if errorlevel 1 (
    echo Installing dependencies...
    pip install -r requirements.txt
) else (
    echo Dependencies already installed
)

echo.
echo Checking Gemini API configuration...
if not exist ".env" (
    echo WARNING: .env file not found!
    echo Please create backend/.env with your GEMINI_API_KEY
    echo See GEMINI_SETUP.md for instructions
    echo.
    pause
)

echo.
echo Starting backend server...
echo Server will be available at: http://localhost:8000
echo API docs available at: http://localhost:8000/docs
echo.
echo Press Ctrl+C to stop the server
echo.

uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
