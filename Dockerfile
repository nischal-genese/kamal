FROM node:18

WORKDIR /usr/src/app

COPY app/package.json app/yarn.lock ./

RUN yarn

COPY ./app .

RUN yarn build

EXPOSE 4173

CMD ["yarn", "preview"]
