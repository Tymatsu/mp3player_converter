# YouTube to MP3 Converter

A sleek, high-performance web application that allows users to download YouTube videos as MP3 files with a modern, user-friendly interface.

![YouTube to MP3 Converter](https://github.com/yourusername/youtube-mp3-app/raw/main/screenshot.png)

## Features

- **Modern UI**: Clean, intuitive interface with premium design aesthetics
- **YouTube URL Validation**: Instant validation with video metadata preview
- **MP3 Conversion**: High-quality audio extraction from YouTube videos
- **Real-time Progress**: Live progress indicators during download and conversion
- **Download History**: Track and redownload previous conversions
- **Responsive Design**: Fully responsive layout for all devices
- **Dark/Light Mode**: Toggle between themes with smooth transitions
- **Animations**: Subtle animations and microinteractions throughout

## Tech Stack

### Frontend
- **Next.js**: React framework for server-rendered applications
- **React**: UI component library
- **TypeScript**: Type-safe JavaScript
- **Tailwind CSS**: Utility-first CSS framework
- **shadcn/ui**: High-quality UI components built with Radix UI and Tailwind
- **TanStack Query**: Data fetching and caching library
- **Zustand**: State management
- **Framer Motion**: Animation library

### Backend
- **FastAPI**: Modern, high-performance Python web framework
- **pytube**: Library for downloading YouTube videos
- **Pydantic**: Data validation and settings management
- **Uvicorn**: ASGI server

## Getting Started

See the [DEPLOYMENT.md](DEPLOYMENT.md) file for detailed instructions on how to deploy and run the application.

## Quick Start

1. Clone the repository
2. Install backend dependencies:
   ```
   cd backend
   pip install -r requirements.txt
   ```
3. Install frontend dependencies:
   ```
   cd frontend
   npm install
   ```
4. Start the development servers:
   ```
   ./start-dev.sh
   ```
5. Open your browser and navigate to `http://localhost:3000`

## Project Structure

```
youtube-mp3-app/
├── backend/               # FastAPI backend
│   ├── app/               # Application package
│   │   ├── models/        # Pydantic models
│   │   ├── routers/       # API routes
│   │   ├── utils/         # Utility functions
│   │   └── main.py        # FastAPI application
│   ├── downloads/         # Downloaded MP3 files
│   ├── requirements.txt   # Python dependencies
│   └── server.py          # Server entry point
├── frontend/              # Next.js frontend
│   ├── public/            # Static assets
│   ├── src/               # Source code
│   │   ├── app/           # Next.js app directory
│   │   ├── components/    # React components
│   │   ├── lib/           # Utility functions
│   │   └── styles/        # Global styles
│   ├── package.json       # Node.js dependencies
│   └── tailwind.config.js # Tailwind CSS configuration
├── DEPLOYMENT.md          # Deployment instructions
├── README.md              # Project documentation
└── start-dev.sh           # Development startup script
```

## License

MIT

## Acknowledgements

- [Next.js](https://nextjs.org/)
- [FastAPI](https://fastapi.tiangolo.com/)
- [pytube](https://github.com/pytube/pytube)
- [shadcn/ui](https://ui.shadcn.com/)
- [TanStack Query](https://tanstack.com/query)
- [Zustand](https://github.com/pmndrs/zustand)
- [Framer Motion](https://www.framer.com/motion/)
