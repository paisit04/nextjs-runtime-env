FROM node:12-alpine as base

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install


FROM base

COPY ./ ./

RUN npm run build

CMD [ "npm", "start" ]
