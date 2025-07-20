#!/bin/bash
set -e

./install.sh

echo "[run.sh] Waiting for FastAPI service to start..."
sleep 2

echo "[run.sh] Checking health endpoint..."
curl -f http://localhost:8000/ || (echo "[run.sh] Healthcheck failed!" && exit 1)

echo "[run.sh] Checking users endpoint..."
curl -f http://localhost:8000/users || (echo "[run.sh] Users endpoint failed!" && exit 1)

echo "[run.sh] Application is up and both endpoints are reachable!"