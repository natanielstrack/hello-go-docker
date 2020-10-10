FROM golang:1.15

WORKDIR /go/src/app

RUN go get -v github.com/golang/example/hello/...
RUN go install -v /go/src/github.com/golang/example/hello/

cmd ["hello"] 
