# Use the official NGINX base image
FROM nginx:latest

# Install python3-certbot-nginx
RUN apt-get update && \
    apt-get install -y python3-certbot-nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
