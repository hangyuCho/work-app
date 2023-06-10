FROM node:16.19.1-alpine

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./

RUN npm cache clean --force

RUN yarn

COPY . .

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]
