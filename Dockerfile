FROM python:3.10-slim

WORKDIR /app

COPY package*.json /app/

RUN --mount=type=secret,id=npmrc,target=/root/.npmrc npm install

COPY . /app/

CMD npm start
