#
# Dockerfile for Caddy https://caddyserver.com/
# Addopted from https://github.com/abiosoft/caddy-docker
#

FROM alpine:3.5
LABEL maintainer "Sven <sven@testthedocs.org>"

LABEL caddy_version="0.9.5" architecture="amd64"

RUN builddeps=' \
	tar \
	curl \
	'\
	&& apk --no-cache add \
	$builddeps \
	git \
	openssh-client \
	&& curl --silent --show-error --fail --location \
		--header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - \
		"https://caddyserver.com/download/build?os=linux&arch=amd64&features=git" \
    	| tar --no-same-owner -C /usr/bin/ -xz caddy \
 	&& chmod 0755 /usr/bin/caddy \
 	&& /usr/bin/caddy -version \
 	&& apk del --purge $builddeps

EXPOSE 80 443 2015
WORKDIR /srv

ADD Caddyfile /etc/Caddyfile
ADD index.html /srv/index.html

ENTRYPOINT ["/usr/bin/caddy"]
CMD ["--conf", "/etc/Caddyfile"]
