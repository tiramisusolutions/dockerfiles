# Dockerfile for building Ansible image for Alpine 3.4, with as few additional software as possible.
#
# @see https://github.com/gliderlabs/docker-alpine/blob/master/docs/usage.md
#
# Version  1.0
#


# pull base image
FROM alpine:3.4

ENV APP_DIR /opt/mr.butler/ansible
ENV PIP_CACHE /root/.cache

MAINTAINER Sven Strack <sven@so36.net>


RUN apk --no-cache add python py-pip openssl ca-certificates bash && \
    apk --no-cache add --virtual build-dependencies \
        python-dev libffi-dev openssl-dev build-base curl && \
    pip install -U pip cffi && \
    pip install ansible && \
    rm -rf $PIP_CACHE && \
    apk del build-dependencies

WORKDIR $APP_DIR

VOLUME ["/$APP_DIR/"]