# Alpine Ansible Container

Running [Ansible](https://www.ansible.com/) in a [Alpine](http://www.alpinelinux.org/) based [Docker](https://www.docker.com/) Container.

Example:

Container is called ac:

docker run --rm -it -v ${PWD}/hosts:/etc/ansible/hosts -v ${PWD}/ansible.cfg:/etc/ansible/ansible.cfg -v ~/.ssh:/root/.ssh:ro ac all -m ping

Future:

Rename container to mr.ansible, because this should give us:

docker run --rm -it -v ${PWD}/hosts:/etc/ansible/hosts -v ${PWD}/ansible.cfg:/etc/ansible/ansible.cfg -v ~/.ssh:/root/.ssh:ro mr.ansible all -m ping
