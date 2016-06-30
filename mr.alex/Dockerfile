FROM alpine:3.4
MAINTAINER Sven Strack <sven@so36.net>

RUN apk --no-cache add nodejs && \
    npm install alex --global

WORKDIR /build

ENTRYPOINT [ "alex" ]
#CMD ['alex']
