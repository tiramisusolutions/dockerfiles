#!/bin/bash
find ./ -iname "*.html" -type f -exec sh -c 'pandoc "${0}" -o "./output/$(basename ${0%.html}.md)"' {} \;
