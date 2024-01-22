# Dockerfile
FROM node:16.13.0-alpine

# create destination directory
RUN mkdir -p /usr/src/vuestore-app
WORKDIR /usr/src/vuestore-app

# update and install dependency
RUN apk update && apk upgrade

# copy the app, note .dockerignore
COPY . /usr/src/vuestore-app/
RUN npm install

EXPOSE 3000