From alpine:latest
MAINTAINER Sven Strack <sven@so36.net>

RUN apk update &&  apk add --no-cache nodejs \
	&& npm install -g write-good

WORKDIR /source

ENTRYPOINT [ "write-good" ]
