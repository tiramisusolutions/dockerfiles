=====
Notes
=====

markdownbear
============
- install -g remark-lint
- npm install -g remark-cli

Checking all *.rst files in dir *docs*, including all files in subdirs of *docs*

.. code-block:: bash

    [rst]
    bears = reSTLintBear
    15 files = docs/**/*.rst

Calling it

.. code-block:: bash
    
    coala-ci rst
