FROM node:10.19.0-alpine3.9
WORKDIR /home/node/codepen-technical
COPY package*.json ./
RUN npm install
COPY ./dist/ ./
EXPOSE 8082
CMD [ "node", "index.js" ]
