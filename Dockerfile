FROM node:10

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 9000

CMD ["yarn", "start"]