FROM nginx:latest

RUN echo "this docker file generated for jenkins demo ghj" > /usr/share/nginx/html/index.html

EXPOSE 80
