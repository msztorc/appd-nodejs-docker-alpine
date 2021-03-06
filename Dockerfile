FROM node:15-alpine

RUN mkdir -p /usr/src/app && cd /usr/src/app
WORKDIR /usr/src/app
COPY . .

RUN npm install && npm install appdynamics

EXPOSE 8080
CMD [ "node", "server.js" ]
