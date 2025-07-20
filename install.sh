#!/bin/bash
set -e

echo "[install.sh] Building Docker image..."
docker build -t fastapi-users-app .

echo "[install.sh] Pruning old containers for fastapi-users-app..."
if [ $(docker ps -a -q -f name=fastapi-users-container) ]; then
  docker rm -f fastapi-users-container
fi

echo "[install.sh] Starting Docker container..."
docker run -d --name fastapi-users-container -p 8000:8000 fastapi-users-app

echo "[install.sh] Container is running and exposed on port 8000"