FROM debian:wheezy

MAINTAINER Patrick Wolleb

# Install basics 
RUN apt-get update &&  \
    apt-get install -y git wget curl && \
    apt-get clean

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash && \
    . ~/.nvm/nvm.sh && \
    nvm install 0.12.7


# Install npm packages
RUN npm install -g cordova ionic
RUN npm install -g grunt-cli
RUN npm install -g gulp
RUN npm install -g bower
