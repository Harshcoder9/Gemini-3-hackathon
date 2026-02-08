# Gemini-3-hackathon

A full-stack AI-based public safety monitoring and risk detection system for crowd analysis, built for the Gemini 3 Hackathon.

## Project Structure

- **Gemini-3-hackathon/**  
  Main project folder (this repo)
- **Public-Safety-Monitoring/**  
  Core backend and frontend for crowd anomaly detection and alerting

## Features

- Real-time and batch video analysis for crowd risk detection
- Risk classification: NONE / LOW / MEDIUM / HIGH
- Automatic police alert creation for MEDIUM/HIGH risk events
- User dashboard for video upload and risk timeline
- Police dashboard for alert monitoring and acknowledgment
- Persistent alert storage
- Modern React frontend and FastAPI backend

## Technologies Used

- **Backend:** Python, FastAPI, OpenCV, TensorFlow/Keras, YOLOv8, python-dotenv
- **Frontend:** React, Vite, Tailwind CSS
- **Other:** Node.js, Uvicorn, Google Gemini API

## Quick Start

### Backend

```bash
cd Public-Safety-Monitoring/backend
python -m venv .venv
.\.venv\Scripts\activate  # On Windows
pip install -r requirements.txt
uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
```

- Configure your `.env` file with your Gemini API key (see `.env.example`).

### Frontend

```bash
cd Public-Safety-Monitoring/frontend
npm install
npm run dev
```

- Edit `frontend/.env` for API base URL and demo credentials.

### Access

- User Dashboard: [http://localhost:5173](http://localhost:5173)
- Police Dashboard: [http://localhost:5173/police](http://localhost:5173/police)
- Backend API Docs: [http://localhost:8000/docs](http://localhost:8000/docs)

## Folder Overview

- `Public-Safety-Monitoring/backend/` — FastAPI backend, analyzers, models, storage
- `Public-Safety-Monitoring/frontend/` — React frontend, dashboards, UI components
- `Public-Safety-Monitoring/Crowd_Anomaly_Detection/` — Pretrained models and scripts

## Environment Variables

- See `backend/.env.example` and `frontend/.env` for required configuration.

## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](LICENSE) (add a LICENSE file if you want to specify one)
