FROM python:3.10-slim

ENV APP_HOME="/app"

WORKDIR ${APP_HOME}

COPY package*.json ${APP_HOME}/

RUN --mount=type=secret,id=npmrc,target=/root/.npmrc npm install

COPY . ${APP_HOME}/

CMD npm start
