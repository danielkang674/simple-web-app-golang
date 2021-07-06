FROM golang:1.16-alpine

WORKDIR /app

RUN apk update && apk add make

COPY . .

CMD ["/bin/sh"]