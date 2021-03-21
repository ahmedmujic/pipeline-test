FROM node:12-alpine

RUN apk add --no-cache make gcc g++ python

ENV HOST 0.0.0.0

EXPOSE 3001

WORKDIR /usr/src/app

COPY /package*.json ./
RUN npm install

COPY . .

RUN npm run build

CMD [ "npm", "start" ]
