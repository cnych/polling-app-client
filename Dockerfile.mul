FROM node:alpine as BUILD

WORKDIR /usr/src/app

RUN mkdir -p /usr/src/app

ADD . /usr/src/app

RUN npm install && npm run build

FROM nginx:1.15.10-alpine

MAINTAINER cnych <icnych@gmail.com>

COPY --from=BUILD /usr/src/app/build /usr/share/nginx/html
ADD nginx.conf /etc/nginx/conf.d/default.conf