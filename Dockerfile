FROM node:0.12.7-wheezy

MAINTAINER Patrick Wolleb

# Install ionic
RUN npm install -g cordova ionic && \
    npm install -g grunt-cli && \
    npm install -g gulp && \
    npm install -g bower
