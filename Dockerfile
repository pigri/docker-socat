FROM alpine:latest

RUN apk --no-cache upgrade && apk --no-cache --update add socat

ENTRYPOINT ["socat"]
