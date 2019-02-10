FROM node:0.12.14
MAINTAINER Viet Ng <https://github.com/vietaalto/Online-shopping-app-with-Nodejs-MongoDb>

RUN mkdir /meanshop
WORKDIR /meanshop

# Bundle app source
ADD . /meanshop

# Install app dependencies
RUN npm install
RUN npm install -g bower grunt-cli
RUN bower install
