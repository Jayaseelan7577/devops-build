#!/bin/bash

set -e

IMAGE_NAME="guvi-devops-app"
IMAGE_TAG="${1:-dev}"

echo "Building Docker image: ${IMAGE_NAME}:${IMAGE_TAG}"

docker build -t "${IMAGE_NAME}:${IMAGE_TAG}" .

echo "Docker image built successfully: ${IMAGE_NAME}:${IMAGE_TAG}"
