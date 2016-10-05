FROM alpine:3.4
MAINTAINER Sven Strack <sven@testthedocs.org>

ENV PIP_CACHE /root/.cache

RUN builddeps=' \
	python-dev \
	openssl-dev \
	py-pip \
	musl-dev \
	openssl-dev \
	libffi-dev \
	gcc \
	' \
	&& apk --no-cache add \
	ca-certificates \
	python \
	py-httplib2 \
	bash \
	make \
	aspell-en \
	enchant \
	$builddeps \
	&& pip install --upgrade pip \
	&& pip install \
		sphinx \
		sphinx-rtd-theme \
		sphinxcontrib-spelling \
	&& apk del --purge $builddeps \
	&& rm -rf $PIP_CACHE

#VOLUME ["/build/docs"]

COPY _config /build/_config
COPY spelling_wordlist.txt /build/_config/spelling_wordlist.txt
COPY spelling_wordlist.txt /build/spelling_wordlist.txt
COPY _static /build/_static
COPY Makefile /build/Makefile

WORKDIR /build

ENTRYPOINT ["make"]

