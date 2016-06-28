# Alpine Ansible Container

Running [Ansible](https://www.ansible.com/) in a [Alpine](http://www.alpinelinux.org/) based [Docker](https://www.docker.com/) Container.


![mr.ansible](docs/_static/ansiblefunc.png "Shows example or mr.ansible in action")

Example:

Container is called ac:

docker run --rm -it -v ${PWD}/hosts:/etc/ansible/hosts -v ${PWD}/ansible.cfg:/etc/ansible/ansible.cfg -v ~/.ssh:/root/.ssh:ro ac all -m ping

Future:

Rename container to mr.ansible, because this should give us:

docker run --rm -it -v ${PWD}/hosts:/etc/ansible/hosts -v ${PWD}/ansible.cfg:/etc/ansible/ansible.cfg -v ~/.ssh:/root/.ssh:ro mr.ansible all -m ping


# latest
docker run --rm -it --add-host="testbox.io:192.168.21.10" -v $SSH_AUTH_SOCK:/tmp/ssh.sck -e SSH_AUTH_SOCK=/tmp/ssh.sck -v ${PWD}/hosts:/etc/ansible/hosts -v ${PWD}/ansible.cfg:/etc/ansible/ansible.cfg -v ${PWD}/roles:/etc/ansible/roles -v ${PWD}/plays:/etc/ansible/plays a2 ansible-playbook /etc/ansible/plays/testbox.yml

in order ro make this work, check the dirty dockerfile

# test.sh
bash -x test.sh testbox.yml
