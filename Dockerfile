FROM ubuntu:18.04

WORKDIR /app
COPY package.json /app

RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs


RUN npm install
COPY . .
CMD node index.js
EXPOSE 8888