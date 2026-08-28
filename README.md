 GUVI DevOps CI/CD Project

 Project Overview

This project demonstrates an end-to-end DevOps CI/CD implementation using AWS EC2, Git, GitHub, Jenkins, Docker, Docker Compose, and Nginx.

The application source code is maintained in GitHub and automatically built and deployed using a Jenkins Pipeline on an AWS EC2 Ubuntu server.

---

 Project Objectives

- Set up an AWS EC2 Ubuntu server.
- Manage source code using Git and GitHub.
- Create a Docker image for the web application.
- Deploy the application using Docker and Docker Compose.
- Configure Jenkins for CI/CD automation.
- Implement automated build and deployment stages.
- Verify the deployed application using HTTP testing.
- Configure AWS Security Group rules for application and administration access.

---

 Technologies Used

| Technology | Purpose |
|---|---|
| AWS EC2 | Cloud infrastructure |
| Ubuntu | Operating system |
| Git | Version control |
| GitHub | Source code repository |
| Jenkins | CI/CD automation |
| Docker | Containerization |
| Docker Compose | Container deployment |
| Nginx | Web server |
| Bash | Automation scripts |

---

 Project Architecture

```text
                ┌─────────────────┐
                │     GitHub      │
                │   dev branch    │
                └────────┬────────┘
                         │
                         ▼
                ┌─────────────────┐
                │     Jenkins     │
                │   CI/CD Pipeline│
                └────────┬────────┘
                         │
                  ┌──────┴──────┐
                  │             │
                  ▼             ▼
             Build Docker    Deploy
                  │             │
                  └──────┬──────┘
                         ▼
                ┌─────────────────┐
                │    Docker       │
                │ guvi-devops-app │
                └────────┬────────┘
                         │
                         ▼
                ┌─────────────────┐
                │      Nginx      │
                │    Port 80      │
                └────────┬────────┘
                         │
                         ▼
                    Web Browser

# Project Structure

devops-build/
│
├── build/
│   └── Application files
│
├── Dockerfile
├── docker-compose.yml
├── build.sh
├── deploy.sh
├── .dockerignore
├── .gitignore
└── README.md

Docker Configuration

Dockerfile

FROM nginx:alpine

COPY build/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

Docker Compose

#!/bin/bash

set -e

IMAGE_NAME="guvi-devops-app"
IMAGE_TAG="${1:-dev}"

echo "Building Docker image: ${IMAGE_NAME}:${IMAGE_TAG}"

docker build -t "${IMAGE_NAME}:${IMAGE_TAG}" .

echo "Docker image built successfully: ${IMAGE_NAME}:${IMAGE_TAG}"

Build Process

#!/bin/bash

set -e

IMAGE_NAME="guvi-devops-app"
IMAGE_TAG="${1:-dev}"

echo "Building Docker image: ${IMAGE_NAME}:${IMAGE_TAG}"

docker build -t "${IMAGE_NAME}:${IMAGE_TAG}" .

echo "Docker image built successfully: ${IMAGE_NAME}:${IMAGE_TAG}"

Deployment

#!/bin/bash

set -e

echo "Deploying application..."

docker compose down
docker compose up -d --build

echo "Deployment completed successfully."

docker compose ps

Final Result

GitHub
   ↓
Jenkins
   ↓
Docker Build
   ↓
Docker Compose
   ↓
Nginx Container
   ↓
AWS EC2
   ↓
HTTP 200 OK


## Project Screenshots / Evidence

The following screenshots provide evidence of the project implementation:

1. **Git & GitHub** – Git branch creation, commit, and code push.
2. **Docker** – Dockerfile and Docker image build.
3. **Docker Hub** – Docker image tagging and push to Docker Hub.
4. **AWS EC2** – Application deployed on an AWS EC2 instance.
5. **Security Group** – AWS inbound security group configuration.
6. **Jenkins** – Jenkins CI/CD pipeline execution and GitHub checkout.
7. **Deployment** – Docker Compose application deployment.
8. **Application / cURL Testing** – Application accessibility and successful cURL/HTTP testing.
