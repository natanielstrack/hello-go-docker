FROM golang:alpine

RUN apk update && apk add --no-cache git


WORKDIR /go/src/app

RUN go get -v github.com/golang/example/hello/...
RUN go install -v /go/src/github.com/golang/example/hello/

cmd ["hello"] 
