FROM golang:alpine AS builder

RUN apk update && apk add --no-cache git


WORKDIR /go/src/app

RUN go get -v github.com/golang/example/hello/...
RUN go install -v /go/src/github.com/golang/example/hello/

FROM scratch

COPY --from=builder /go/bin/ /usr/local/bin/

cmd ["hello"] 
