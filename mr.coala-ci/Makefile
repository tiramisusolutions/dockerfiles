# The shell we use
#
# # The shell we use
SHELL := /bin/bash


#docker run -it --rm -v ${PWD}/hello.rst:/source/hello.rst:rw coala --files=hello.rst --bears=reSTLintBear

# We like colors
# # From: https://coderwall.com/p/izxssa/colored-makefile-for-golang-projects
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`
YELLOW=`tput setaf 3`

test:

unleash_bears:
	clear
	@echo "$(GREEN)==> Unleaching the bears !$(RESET)"
	@echo "$(YELLOW)== reSTLintBear ==$(RESET)"
	docker run -it --rm -v ${PWD}/hello.rst:/source/hello.rst:rw coala --files=hello.rst --bears=reSTLintBear
