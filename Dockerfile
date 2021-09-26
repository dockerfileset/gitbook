FROM node:10-alpine

RUN npm config set registry='http://registry.npm.taobao.org'
RUN npm install gitbook-cli -g

WORKDIR /gitbook
RUN gitbook init

CMD gitbook serve
