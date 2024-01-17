FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN npm install -g npm

CMD ["pytest"]
