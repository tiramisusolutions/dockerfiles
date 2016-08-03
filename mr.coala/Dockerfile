FROM alpine:latest
MAINTAINER Sven Strack <sven@so36.net>

ENV PIP_CACHE /root/.cache

RUN builddeps=' \
    build-base \
    musl-dev \
    python3-dev \
    ' \
    apk add --no-cache musl \
        openssl \
        git \
        bash \
        ca-certificates \
        python3 \
        clang \
        clang-libs \
        indent \
        nodejs \
        openjdk8-jre \
	&& pip3 install --upgrade pip \
	&& pip3 install coala-bears \
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

ENV VERSION 3.4
ADD https://www.languagetool.org/download/LanguageTool-$VERSION.zip /LanguageTool-$VERSION.zip

ENTRYPOINT ["coala"]
