# AI-Based Public Safety Monitoring and Risk Detection System

This project is a full-stack AI-based public safety monitoring and risk detection system for crowd analysis, built for the Gemini 3 Hackathon.

The system combines computer vision with Gemini 3–powered reasoning to move beyond simple detection and enable context-aware public safety intelligence.

---

## Project Structure

Public-Safety-Monitoring/  
Core backend and frontend for crowd anomaly detection, contextual reasoning, and alerting

---

## Key Idea

Traditional surveillance systems detect what is happening.  
This system uses Gemini 3 to understand why it is happening and what action should be taken.

Computer vision models extract spatial and temporal signals from video, while Gemini 3 performs higher-level reasoning such as risk assessment, cause-and-effect analysis, and alert decision-making.

---

## Features

Real-time and batch video analysis for crowd risk detection  
Spatial-temporal crowd behavior analysis  
Risk classification: NONE / LOW / MEDIUM / HIGH  
Gemini 3–based contextual reasoning for risk severity and alert decisions  
Automatic police alert creation for MEDIUM and HIGH risk events  
User dashboard for video upload and risk timeline visualization  
Police dashboard for alert monitoring and acknowledgment  
Persistent alert storage  
Modern React frontend and FastAPI backend  

---

## How Gemini 3 Is Used

Gemini 3 acts as the reasoning and decision-making layer of the system.

Workflow:
1. Video frames are processed using computer vision models to extract crowd density, motion patterns, and anomalies.
2. These signals are summarized into structured scene descriptions.
3. The summaries are sent to the Gemini 3 API.
4. Gemini 3 analyzes context across time to understand cause-and-effect relationships.
5. Gemini 3 classifies risk severity and decides whether an alert should be triggered.
6. Gemini 3 generates human-readable incident explanations for authorities.

This approach reduces false positives and transforms raw detections into actionable public safety intelligence.

---

## Technologies Used

Backend  
Python  
FastAPI  
OpenCV  
TensorFlow  
Keras  
YOLOv8  
Uvicorn  
python-dotenv  

Frontend  
React  
Vite  
Tailwind CSS  

AI and Reasoning  
Google Gemini 3 API for contextual reasoning, risk assessment, and alert generation  

Other  
Node.js  
REST APIs  

---

## Quick Start

### Backend Setup

```bash
cd Public-Safety-Monitoring/backend
python -m venv .venv
.\.venv\Scripts\activate
pip install -r requirements.txt
uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
