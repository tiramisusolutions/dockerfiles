=====
Notes
=====

need to be sorted....

Plain command:
.. code-block:: bash

    docker run --rm -it --add-host="testbox.io:192.168.21.10" -v $SSH_AUTH_SOCK:/tmp/ssh.sck -e SSH_AUTH_SOCK=/tmp/ssh.sck -v ${PWD}/hosts:/etc/ansible/hosts -v ${PWD}/ansible.cfg:/etc/ansible/ansible.cfg -v ${PWD}/roles:/etc/ansible/roles -v ${PWD}/plays:/etc/ansible/plays --entrypoint=ansible-playbook an /etc/ansible/plays/testbox.yml
