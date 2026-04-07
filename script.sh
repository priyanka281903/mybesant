#!/bin/bash

# Variables
IMAGE_NAME=myapache
DOCKERHUB_USERNAME=mydocker2819

# Build image
echo "Building Docker image..."
docker build -t myapache .

# Tag image for Docker Hub
echo "Tagging image..."
docker tag myapache mydocker2819/myimageA

# Login to Docker Hub
echo "Logging into Docker Hub..."
docker login

# Push image
echo "Pushing image to Docker Hub..."
docker push myapache mydocker2819/myimageA

# Run container
echo "Running container..."
docker run -d -p 8080:80 myapache mydocker2819/myimageA
