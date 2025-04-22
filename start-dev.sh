#!/bin/bash

# Start the FastAPI backend
echo "Starting FastAPI backend..."
cd backend && python3 -m uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload &
BACKEND_PID=$!

# Wait a moment for backend to start
sleep 2

# Start the Next.js frontend
echo "Starting Next.js frontend..."
cd frontend && npm run dev &
FRONTEND_PID=$!

# Function to handle script termination
function cleanup {
  echo "Stopping services..."
  kill $BACKEND_PID
  kill $FRONTEND_PID
  exit
}

# Register the cleanup function for when script receives SIGINT or SIGTERM
trap cleanup SIGINT SIGTERM

# Keep the script running
echo "Services started. Press Ctrl+C to stop."
wait
