#!/bin/bash
# Will build, test and if OK deploy docs

#We like colors
# Remove comment if you want to use them
#red=$(tput setaf 1)
#green=$(tput setaf 2)
#reset=$(tput sgr0)
#yellow=$(tput setaf 3)

docs_prod_build() {
	if [ -d "docs/_build" ]; then
		rm -rf docs/_build
	fi

	docker run -it --rm -v "${PWD}"/docs:/build/docs:rw \
		-v "${PWD}"/docs/conf.py:/build/conf/conf.py \
		-v "${PWD}"/docs/_static:/build/docs/_static \
		-u "$(id -u)":"$(id -g)" quay.io/tiramisu/mr.docs html
}

docs_prod_build
