# githubmigration
Tools for github wiki migration from google code

# Requirements
python
bash

# anchor-converter -> Example Usage
`$ echo 'GCodeStyle#Anchor_(with_paranthesis)' | ./gcode2githubwiki-anchor.py 
gcodestyle#anchor-with-paranthesis
`

# extract wiki-links -> Example Usage
```
$ cd openmalaria.wiki
$ ../githubmigration/extract-wiki-links.bash
```

This script will extract all wiki-style links from files with .md ending an put the links separated by newlines into /tmp/all-links.md
