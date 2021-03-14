FROM golang:1.12.0-alpine3.9

COPY src/handlers /go/src/handlers/

WORKDIR /go/src/api/

RUN apk update
RUN apk add --no-cache git
RUN go get github.com/codegangsta/gin
RUN go get github.com/gin-gonic/gin
RUN go get github.com/joho/godotenv
RUN go get golang.org/x/crypto/bcrypt
RUN go get github.com/gin-contrib/sessions
RUN go get github.com/gin-contrib/sessions/cookie

CMD gin -i run
