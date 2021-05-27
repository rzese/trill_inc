#!/usr/bin/python

import sys

namein=str(sys.argv[1])

idx = 1

out = open(sys.argv[2],"w")

with open(namein, "r") as f:
	lines = f.readlines()
	
	for i in range(2,11):
		out.write(";" + str(i))
	out.write("\n")
	
	for j in range(2,11):
		out.write(";" + lines[idx].split()[1])
		idx = idx + 2
	out.write("\n")
			
f.close()

out.close()
