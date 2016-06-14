#!/bin/bash

cd app
echo "Running Linkcheck"
../tests.sh | while read -r line ; do sphinx-build -c../conf -b linkcheck -d docs/_build/doctrees docs docs/_build/tests/$line $line; done
