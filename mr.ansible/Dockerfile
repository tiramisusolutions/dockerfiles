# From https://github.com/jfrazelle/dockerfiles/tree/master/ansible
# https://www.ansible.com/
#
# docker run --rm \
# 	-it \
# 	-v ${PWD}/hosts:/etc/ansible/hosts \
# 	-v ${PWD}/ansible.cfg:/etc/ansible/ansible.cfg \
# 	-v ${HOME}/.ssh:/root/.ssh:ro \
# 	ansible all -m ping
#
FROM alpine:latest
MAINTAINER Sven Strack <sven@so36.net>

RUN builddeps=' \
		python-dev \
		py-pip \
		musl-dev \
		openssl-dev \
		libffi-dev \
		gcc \
		' \
	&& apk --no-cache add \
	ca-certificates \
	python \
	py-paramiko \
	py-yaml \
	py-jinja2 \
	py-httplib2 \
	$builddeps \
	&& mkdir root/.ssh \
	&& touch root/.ssh/known_hosts \
	&& chmod -R 700 /root/.ssh \
	&& pip install --upgrade pip \
	&& pip install \
		ansible \
		six \
	&& apk del --purge $builddeps


ENTRYPOINT [ "ansible" ]


