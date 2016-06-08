#!/bin/bash

cd app
../tests.sh | while read -r line ; do sphinx-build -b html -d docs/_build/doctrees docs docs/_build/tests/$line $line; done
