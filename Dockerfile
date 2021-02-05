FROM node:lts

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --production

COPY . .

RUN npm run docker:build

EXPOSE 3000

CMD [ "node", "server.js" ]