FROM debian:wheezy

MAINTAINER Patrick Wolleb

# Install basics
RUN apt-get update &&  \
    apt-get install -y git wget curl && \
    apt-get clean

# Install node and ionic
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash && \
    . ~/.nvm/nvm.sh && \
    nvm install 0.12.7 && \
    npm install -g cordova ionic && \
    npm install -g grunt-cli && \
    npm install -g gulp && \
    npm install -g bower
