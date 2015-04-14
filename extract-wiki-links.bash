#!/bin/bash

# extract all lines with links in them
grep '\[.*\]\(.*\)' *.md > /tmp/all-links.md
# append newline to end of link construct
sed -i 's/)/)\n/g' /tmp/all-links.md
# prepend newline to start of link construct
sed -i 's/\[/\n\[/g' /tmp/all-links.md
# get only links
grep '^\[.*\]' /tmp/all-links.md | grep -e '(.*)$'> /tmp/all-links.md.1
mv /tmp/all-links.md.1 /tmp/all-links.md

exit 0
