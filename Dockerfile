FROM golang:alpine
MAINTAINER Slawomir Rozbicki <docker@rozbicki.eu>

RUN apk update && apk add git

COPY cnc /opt/cnc
WORKDIR /opt/cnc

RUN go get github.com/go-sql-driver/mysql \
&& go get github.com/mattn/go-shellwords \
&& go build

