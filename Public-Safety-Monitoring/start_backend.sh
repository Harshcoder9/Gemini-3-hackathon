#!/bin/bash

echo "===================================="
echo "Public Safety Monitoring - Backend"
echo "===================================="
echo ""

cd "$(dirname "$0")/backend"

echo "Checking Python installation..."
if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python 3 is not installed"
    echo "Please install Python 3.8+ from https://www.python.org/"
    exit 1
fi

python3 --version

echo ""
echo "Checking if dependencies are installed..."
if ! python3 -c "import fastapi" 2>/dev/null; then
    echo "Installing dependencies..."
    pip3 install -r requirements.txt
else
    echo "Dependencies already installed"
fi

echo ""
echo "Checking Gemini API configuration..."
if [ ! -f ".env" ]; then
    echo "WARNING: .env file not found!"
    echo "Please create backend/.env with your GEMINI_API_KEY"
    echo "See GEMINI_SETUP.md for instructions"
    echo ""
    read -p "Press Enter to continue..."
fi

echo ""
echo "Starting backend server..."
echo "Server will be available at: http://localhost:8000"
echo "API docs available at: http://localhost:8000/docs"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
