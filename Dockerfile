FROM nginx:latest

RUN echo "this docker file gdenerated for jenkins demo" > /usr/share/nginx/html/index.html

EXPOSE 80
