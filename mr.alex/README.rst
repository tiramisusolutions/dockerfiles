Mr.Alex
=======

`Alex <http://alexjs.com/>`_ running in a docker container based on Alpine

::
 Whether your own or someone else’s writing, alex helps you find gender favouring, polarising, race related, religion inconsiderate, or other unequal phrasing.

Usage
-----

We have some examples in /examples so we will use these

.. code-block:: bash

docker run -it --rm -v $(pwd)/examples:/build --name alex-docker mralex alex

What it does
------------

It starts a container, mounts your [current dir]/docs directory into the container to /build and runs alex against it.

..todo:: pic, more/better docs, add configs like allowed words to docs
