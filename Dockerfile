# Use official Nginx image from Docker Hub
FROM nginx:alpine

# Remove default Nginx web page
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom index.html to Nginx web directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80