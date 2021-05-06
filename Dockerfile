FROM strapi/base

# RUN mkdir -p /app
WORKDIR /app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install

COPY . .

ENV PORT 1337

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]