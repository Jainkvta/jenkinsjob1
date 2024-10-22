FROM centos:latest
RUN yum update -y && yum install -y httpd
RUN echo "Hello World" > /var/www/html/index.html
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
