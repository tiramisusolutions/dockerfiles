========
Examples
========

mr.ansible without *wrapper function*
====================================

.. note::

	In this examples we use *--add-host="testbox.io:192.168.21.10"*, this is only to add a entry to /etc/hosts of the container.
	We need that to make them our vagrant testbox reachable from within the container, you do not need that for production.

Ping all machines:

.. code-block:: bash

    docker run --rm -it --add-host="testbox.io:192.168.21.10" \
    	-v $SSH_AUTH_SOCK:/tmp/ssh.sck -e SSH_AUTH_SOCK=/tmp/ssh.sck \
    	-v ${PWD}/hosts:/etc/ansible/hosts \
    	-v ${PWD}/ansible.cfg:/etc/ansible/ansible.cfg mr.ansible all -m ping


Run playbook *testbox.yml*, we override the default entrypoint [ansible] with [ansible-playbook] for this:

.. code-block:: bash

	docker run --rm -it --add-host="testbox.io:192.168.21.10" \
		-v $SSH_AUTH_SOCK:/tmp/ssh.sck -e SSH_AUTH_SOCK=/tmp/ssh.sck \
		-v ${PWD}/hosts:/etc/ansible/hosts -v ${PWD}/ansible.cfg:/etc/ansible/ansible.cfg \
		-v ${PWD}/roles:/etc/ansible/roles \
		-v ${PWD}/plays:/etc/ansible/plays --entrypoint=ansible-playbook mr.ansible /etc/ansible/plays/testbox.yml


Old
----
docker run --rm -it -v ${PWD}/hosts:/etc/ansible/hosts -v ${PWD}/ansible.cfg:/etc/ansible/ansible.cfg -v ~/.ssh:/root/.ssh:ro mr.ansible all -m ping


docker run --rm -it --add-host="testbox.io:192.168.21.10" -v $SSH_AUTH_SOCK:/tmp/ssh.sck -e SSH_AUTH_SOCK=/tmp/ssh.sck -v ${PWD}/hosts:/etc/ansible/hosts -v ${PWD}/ansible.cfg:/etc/ansible/ansible.cfg -v ${PWD}/roles:/etc/ansible/roles -v ${PWD}/plays:/etc/ansible/plays mr.ansible ansible-playbook /etc/ansible/plays/testbox.yml

in order ro make this work, check the dirty dockerfile

Testing
========

test.sh

	bash -x test.sh testbox.yml

To-do
=====

Write on script with two functions

like:

mr.ansible and in there two functions like mr.ansible and mr.ansibe-playbook
