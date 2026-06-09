#!/bin/bash
set -e

apt update -y
apt install -y docker.io docker-compose-v2 git

systemctl start docker
systemctl enable docker

usermod -aG docker ubuntu || true

# Go to home directory
cd /home/ubuntu

# Clone repo
if [ ! -d "nginx-rotate-app-" ]; then
  git clone https://github.com/anjalivgowda8/nginx-rotate-app-.git
fi

cd nginx-rotate-app-

# Build and start containers
docker compose down || true
docker compose up -d --build