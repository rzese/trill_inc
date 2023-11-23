#!/usr/bin/python

import sys

namein=str(sys.argv[1])

idx = 1

out = open(sys.argv[2],"w")

with open(namein, "r") as f:
	lines = f.readlines()

	out.write("i;time;std;max;min\n")
	for i in range(2,11):
		# "time: " + str(tta) + " pm " + str(ttstd) + " on " + str(ct) + " Prob: " + str(prob) + " max-min " + str(max) + " " + str(min)
		out.write(str(i) + ";" + lines[idx].split()[1] + ";" + lines[idx].split()[3] + ";" + lines[idx].split()[9] + ";" + lines[idx].split()[10] + "\n")
			
f.close()

out.close()
