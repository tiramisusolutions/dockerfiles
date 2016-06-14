FROM debian:jessie
MAINTAINER Sven Strack <sven@so36.net>

RUN apt-get update && apt-get install -y \
    pandoc \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /source
ENTRYPOINT ["pandoc"]
CMD ["--help"]
