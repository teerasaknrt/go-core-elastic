FROM golang:1.10-alpine3.8 as build
RUN apk add --no-cache ca-certificates
WORKDIR /go/src/github.com/teerasaknrt/go-core-elastic
COPY . .

RUN  go build  -o app

FROM alpine:3.7
RUN apk add --no-cache ca-certificates 
COPY --from=build /go/src/github.com/teerasaknrt/go-core-elastic/app /user/local/bin/app
ENTRYPOINT ["/user/local/bin/app"]
EXPOSE 8080