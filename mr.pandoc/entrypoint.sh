#!/bin/bash
set -e

# First check if we have the right output directory, if not create it
if [ -d "/source/markdown" ]; then
	: # do nothing
else
	# Create the directory
	mkdir -p /source/markdown
fi

# Convert html files to markdown and place them into the directory named markdown
# change into directory and run pandoc
# we mount docs/_build to /source [during docker use]
cd /source/html && find ./ -iname "*.html" -type f -exec sh -c 'pandoc "${0}" -o "../markdown/$(basename ${0%.html}.md)"' {} \;
