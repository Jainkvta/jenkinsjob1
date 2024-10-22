# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy the static HTML file to the Nginx HTML directory
RUN echo "Hello World" > /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
