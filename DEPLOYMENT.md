# YouTube to MP3 Converter - Deployment Guide

This document provides instructions for deploying and running the YouTube to MP3 Converter application.

## Project Structure

The application consists of two main components:

1. **Backend (FastAPI)**: Handles YouTube video processing and MP3 conversion
2. **Frontend (Next.js)**: Provides the user interface for interacting with the application

## Prerequisites

- Node.js 18+ and npm
- Python 3.8+
- pip (Python package manager)

## Installation

### Backend Setup

1. Navigate to the backend directory:
   ```
   cd backend
   ```

2. Install the required Python packages:
   ```
   pip install -r requirements.txt
   ```

### Frontend Setup

1. Navigate to the frontend directory:
   ```
   cd frontend
   ```

2. Install the required Node.js packages:
   ```
   npm install
   ```

## Running the Application

### Development Mode

To run both the backend and frontend in development mode:

1. From the project root directory, run:
   ```
   ./start-dev.sh
   ```

This script will start:
- The FastAPI backend on port 8000
- The Next.js frontend on port 3000

You can then access the application at: http://localhost:3000

### Production Deployment

#### Backend Deployment

1. Navigate to the backend directory:
   ```
   cd backend
   ```

2. Start the FastAPI server with uvicorn:
   ```
   uvicorn server:app --host 0.0.0.0 --port 8000
   ```

For production environments, consider using Gunicorn with uvicorn workers:
```
gunicorn -w 4 -k uvicorn.workers.UvicornWorker server:app --bind 0.0.0.0:8000
```

#### Frontend Deployment

1. Navigate to the frontend directory:
   ```
   cd frontend
   ```

2. Build the Next.js application:
   ```
   npm run build
   ```

3. Start the production server:
   ```
   npm start
   ```

Alternatively, you can deploy the frontend to a static hosting service like Vercel, Netlify, or GitHub Pages.

## Environment Variables

### Backend

Create a `.env` file in the backend directory with the following variables:

```
DOWNLOAD_DIR=downloads
CORS_ORIGINS=http://localhost:3000,https://your-production-domain.com
```

### Frontend

Create a `.env.local` file in the frontend directory with the following variables:

```
NEXT_PUBLIC_API_URL=http://localhost:8000
```

For production, update this to your backend API URL.

## API Endpoints

The backend provides the following API endpoints:

- `POST /api/validate`: Validates a YouTube URL and returns video information
- `POST /api/download`: Initiates the MP3 download process
- `GET /api/status/{download_id}`: Checks the status of an ongoing download
- `GET /api/history`: Retrieves download history
- `GET /api/downloads/{filename}`: Serves the downloaded MP3 files

## Features

- Modern, responsive UI with dark/light mode
- Real-time download progress tracking
- Download history
- High-quality MP3 conversion
- Smooth animations and transitions
