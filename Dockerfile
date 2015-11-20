FROM golang:1.5

ADD . /go/src/app
WORKDIR /go/src
RUN go get app
RUN go install app
ENTRYPOINT /go/bin/app

EXPOSE 5000

