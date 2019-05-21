FROM nginx:1.15.10-alpine

MAINTAINER cnych <icnych@gmail.com>

ADD ./build /usr/share/nginx/html
ADD nginx.conf /etc/nginx/conf.d/default.conf
