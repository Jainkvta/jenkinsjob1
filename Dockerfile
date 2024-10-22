# Use CentOS as the base image
FROM centos:latest

# Update the package repositories and install Apache HTTP server
RUN yum update -y && yum install -y httpd

# Create an index.html file with "Hello World" content
RUN echo "Hello World" > /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
