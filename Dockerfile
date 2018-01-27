
FROM node:8.9-alpine

ENV NODE_ENV production

RUN mkdir /app && npm install

ADD . /app/

WORKDIR /app
EXPOSE 8000

CMD ["node", "server.js"]
