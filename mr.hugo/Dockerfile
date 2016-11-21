FROM alpine:latest
MAINTAINER Sven Strack <sven@testthedocs.org>

ENV HUGO_VERSION 0.17
ENV PIP_CACHE /root/.cache

RUN apk --no-cache add \
	ca-certificates \
	wget \
	tar

RUN wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-64bit.tgz \
	&& tar zxf hugo_${HUGO_VERSION}_linux-64bit.tgz \
	&& mv hugo /usr/local/bin \
	&& rm hugo_${HUGO_VERSION}_linux-64bit.tgz


VOLUME /src
WORKDIR /src

ENTRYPOINT [ "hugo" ]




