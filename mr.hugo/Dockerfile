FROM alpine:latest
MAINTAINER Sven Strack <sven@testthedocs.org>

ENV HUGO_VERSION 0.18
ENV PIP_CACHE /root/.cache

LABEL hugo_version=$HUGO_VERSION

RUN apk --no-cache add \
	ca-certificates \
	wget \
	tar

#RUN curl -sSL https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux_amd64.tar.gz | tar -v -C /usr/local/bin -xz --strip-components 1 && \
	#mv /usr/local/bin/hugo_${HUGO_VERSION}_linux_amd64 /usr/local/bin/hugo

RUN wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
	&& tar zxf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
	#&& mv hugo_${HUGO_VERSION}_linux_amd64 hugo \
	&& mv hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 /usr/local/bin/hugo \
	#&& mv hugo /usr/local/bin/ \
	&& rm hugo_${HUGO_VERSION}_Linux-64bit.tar.gz


VOLUME /src
WORKDIR /src

ENTRYPOINT [ "hugo" ]




