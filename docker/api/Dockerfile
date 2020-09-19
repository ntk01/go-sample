FROM golang:1.13

COPY src/api /go/src/api/

WORKDIR /go/src/api/

RUN go get github.com/codegangsta/gin
RUN go get github.com/gin-gonic/gin

CMD gin -i run

