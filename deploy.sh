#!/bin/bash

set -e

echo "Deploying application..."

docker compose down
docker compose up -d --build

echo "Deployment completed successfully."

docker compose ps
