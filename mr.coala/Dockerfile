FROM alpine:latest
MAINTAINER Sven Strack <sven@so36.net>

ENV PIP_CACHE /root/.cache

RUN builddeps=' \
    build-base \
    musl-dev \
    python3-dev \
    ' \
    apk add --no-cache musl \
        $builddeps \
		openssl \
        git \
        bash \
        ca-certificates \
        python3 \
        clang \
        indent \
        nodejs \
	&& python3 -m ensurepip \
	&& rm -r /usr/lib/python*/ensurepip \
	&& pip3 install --upgrade pip \
	&& pip3 install coala-bears --pre \
	&& rm -rf $PIP_CACHE \
    && npm install  -g \
        alex \
        autoprefixer \
        bootlint \
        coffeelint \
        complexity-report \
        csslint \
        dockerfile_lint \
        eslint \
        jshint \
        postcss-cli \
        remark-cli \
        tslint \
        typescript \
        ramllint \
	&& apk del --purge $builddeps


ENTRYPOINT ["coala"]
