FROM nginx:1.15.10-alpine

MAINTAINER cnych <icnych@gmail.com>

RUN mkdir -p /usr/share/nginx/html
COPY build/ /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
