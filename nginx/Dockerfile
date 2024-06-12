# Use the official NGINX base image
FROM nginx:latest

# Install python3-certbot-nginx
RUN apt-get update && \
    apt-get install -y python3-certbot-nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Generate SSL certificate and configure NGINX non-interactively
RUN certbot --nginx -d $CERTBOT_DOMAIN --non-interactive --agree-tos -m $CERTBOT_EMAIL && \
    certbot renew --nginx --non-interactive --agree-tos
