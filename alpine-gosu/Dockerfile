FROM alpine:3.3
MAINTAINER Sven Strack <sven@so36.net>

ENV GOSU_VERSION="1.9" \
    GOSU_DOWNLOAD_URL="https://github.com/tianon/gosu/releases/download/1.9/gosu-amd64" \
    GOSU_DOWNLOAD_SIG="https://github.com/tianon/gosu/releases/download/1.9/gosu-amd64.asc" \
    GOSU_DOWNLOAD_KEY="0x036A9C25BF357DD4"

RUN apk --no-cache add bash \
    && buildDeps='curl gnupg' HOME='/root' \
    && set -x \
    && apk add --update $buildDeps \
    && gpg-agent --daemon \
    && gpg --keyserver pgp.mit.edu --recv-keys $GOSU_DOWNLOAD_KEY \
    && echo "trusted-key $GOSU_DOWNLOAD_KEY" >> /root/.gnupg/gpg.conf \
    && curl -sSL "$GOSU_DOWNLOAD_URL" > gosu-amd64 \
    && curl -sSL "$GOSU_DOWNLOAD_SIG" > gosu-amd64.asc \
    && gpg --verify gosu-amd64.asc \
    && rm -f gosu-amd64.asc \
    && mv gosu-amd64 /usr/bin/gosu \
    && chmod +x /usr/bin/gosu \
    && apk del --purge $buildDeps \
    && rm -rf /root/.gnupg \
    && rm -rf /var/cache/apk/* \
    ;
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
