# convenience makefile
#

# The shell we use
# SHELL := /bin/bash
#
# We like colors
# From: https://coderwall.com/p/izxssa/colored-makefile-for-golang-projects
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`
YELLOW=`tput setaf 3`


# Add the following 'help' target to your Makefile
# # And add help text after each target name starting with '\#\#'
help: ## This help message
         @echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m:\2/' | column -c2 -t -s :)"

docs-release-build:
	docs-prod: ## Building prod version of the docs [docs ready for release]
	@echo ""
	@echo "$(GREEN)==> Building prod. version of the docs ....$(RESET)"
	./src/build_release_docs.sh
