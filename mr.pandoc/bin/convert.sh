#!/bin/bash
set -e

# Convert html files into markdown

FILES=*.html
for f in $FILES
do
	filename="${f%.*}"
	# Run pandoc to convert
	`pandoc $f -t markdown -o output/$filename.md`
done
