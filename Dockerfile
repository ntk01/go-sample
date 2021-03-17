FROM golang:1.12.0-alpine3.9

COPY src/api /go/src/api/

WORKDIR /go/src/api/

RUN apk update
RUN apk add --no-cache git
RUN go get github.com/codegangsta/gin
RUN go get github.com/gin-gonic/gin

CMD gin -i run

