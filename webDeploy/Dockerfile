# FROM httpd:2-alpine

# COPY ./atsflutter/ /usr/local/apache2/htdocs/
# COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf


# FROM arm32v7/golang:1.12.13 AS builder
FROM golang:latest AS builder
RUN mkdir /go/src/atsflutter
WORKDIR /go/src/atsflutter

COPY atsechoserver.go .
COPY go.mod .
COPY go.sum .
RUN export GOPATH=/go/src/atsflutter
RUN go get -v /go/src/atsflutter
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main /go/src/atsflutter

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /go/src/atsflutter/main .
RUN mkdir atsflutter
COPY atsflutter/ atsflutter/

EXPOSE 80
CMD ["./main"]
STOPSIGNAL SIGINT