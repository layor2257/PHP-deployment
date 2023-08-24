#!/bin/bash

set -e

echo "====== visamstest ======="

# Stop and remove existing container
docker stop visamstest || true
docker rm visamstest || true

# Remove existing image
docker rmi visamstest || true

# Pull updates from Git
git pull

# Build Docker image
docker build -t visamstest .

# Run Docker container
docker run -d -p 9000:9000 --name visamstest visamstest

# Clean up unused images and containers
docker system prune -f
