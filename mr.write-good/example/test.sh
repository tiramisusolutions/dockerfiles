#!/bin/bash
set -eux
#docker run -it --rm -v "${PWD}":/source:rw -u $(id -u):$(id -g) quay.io/tiramisu/mr.write-good "$@"
docker run -it --rm -v "${PWD}":/source:rw -u $(id -u):$(id -g) quay.io/tiramisu/mr.write-good contributing.rst
