FROM nginx:latest

RUN echo "this dockerfile generated for jenkis=ns demo using webhooks" > /usr/share/nginx/html/index.html

EXPOSE 80
