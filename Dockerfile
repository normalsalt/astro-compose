# syntax = docker/dockerfile:1

FROM node:lts-alpine

WORKDIR /my-app

COPY ./my-app /my-app
RUN npm install
RUN npm run build

EXPOSE 4321
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
