# Use the official NGINX base image
FROM nginx:latest

# Install python3-certbot-nginx
RUN apt-get update && \
    apt-get install -y python3-certbot-nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Generate SSL certificate and configure NGINX
RUN certbot --nginx -d lb.taqiyyaghazi.com -d www.lb.taqiyyaghazi.com && \
    certbot renew --nginx
