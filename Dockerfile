# Dockerfile
FROM node:16.13.0-alpine

# create destination directory
RUN mkdir -p /app
WORKDIR /app

# update and install dependency
RUN apk update && apk upgrade

# copy the app, note .dockerignore
COPY . /app/

RUN apk add --no-cache yarn --repository="http://dl-cdn.alpinelinux.org/alpine/edge/community" 
RUN yarn install

EXPOSE 3000