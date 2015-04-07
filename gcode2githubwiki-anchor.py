#!/usr/bin/python

import sys
import fileinput
from string import maketrans

intab = "_"
outtab = "-"
trantab = maketrans(intab, outtab)

for line in fileinput.input():
	line = line.lower().translate(trantab, ':/><()=').strip()
	sys.stdout.write(line)
