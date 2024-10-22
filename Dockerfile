
# Use CentOS as the base image
FROM centos:latest

# Disable the local DVD repository and update the package repositories
RUN sed -i 's|^enabled=1|enabled=0|' /etc/yum.repos.d/CentOS-Media.repo && \
    yum clean all && \
    yum -y update && \
    yum install -y httpd

# Create an index.html file with "Hello World" content
RUN echo "Hello World" > /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
