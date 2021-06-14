FROM golang:1.16.5-alpine3.13

WORKDIR /login

COPY . /login

RUN apk update
RUN apk add --no-cache git
RUN go get github.com/codegangsta/gin

CMD gin -i run
