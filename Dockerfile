FROM node:lts-alpine3.18

WORKDIR /peresvet

COPY .next ./.next
COPY public ./public
COPY package.json ./
COPY pm2.json ./

EXPOSE 3000

RUN npm i pm2 -g
RUN npm i next
CMD npm run pm2
