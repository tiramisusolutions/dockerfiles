FROM alpine:latest
LABEL maintainer "Sven <sven@tiramisu.solutions" \
	    org.label-schema.vendor = "TiramisuSolutions"


ENV HUGO_VERSION 0.20.7
ENV PIP_CACHE /root/.cache

LABEL hugo_version=$HUGO_VERSION

RUN builddeps=' \
	ca-certificates \
	wget \
	tar \
	' \
	&& apk --no-cache add \
	$builddeps \
	&& update-ca-certificates
	#&& apk del --purge $builddeps

#RUN curl -sSL https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux_amd64.tar.gz | tar -v -C /usr/local/bin -xz --strip-components 1 && \
	#mv /usr/local/bin/hugo_${HUGO_VERSION}_linux_amd64 /usr/local/bin/hugo

RUN wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
	&& tar zxf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
	&& mv hugo /usr/local/bin/hugo \
	&& rm hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
	&& apk del --purge $builddeps

VOLUME /src
WORKDIR /src

ENTRYPOINT [ "hugo" ]


