#!/bin/bash

cd app
echo "Running Linkcheck"
../tests.sh | while read -r line ; do sphinx-build -c../conf -b html -d docs/_build/doctrees docs docs/_build/tests/$line $line; done
