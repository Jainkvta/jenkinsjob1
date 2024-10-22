FROM nginx:latest

RUN echo "this docker file genrated for jenkins demo" > /usr/share/nginx/html/index.html

EXPOSE 80
