#!/usr/bin/python

import sys

namein=str(sys.argv[1])

idx = 1

out = open(sys.argv[2],"w")

with open(namein, "r") as f:
	lines = f.readlines()

	out.write("i;time;std;max;min;bdd;bddStd;rep;repStd\n")
	for i in range(2,11):
		# "time: " + str(tta) + " pm " + str(ttstd) + " on " + str(ct) + " Prob: " + str(prob) + " max-min " + str(maxt) + " " + str(mint) + " bdd " + numpy.average(tbdd) + " pm " + numpy.std(tbdd) + " repair " + numpy.average(tr) + " pm " + numpy.std(tr)
		while "time:" not in lines[idx]:
			idx = idx + 1
		out.write(str(i) + ";" + lines[idx].split()[1] + ";" + lines[idx].split()[3] + ";" + lines[idx].split()[9] + ";" + lines[idx].split()[10] + ";" + lines[idx].split()[12] + ";" + lines[idx].split()[14] + ";" + lines[idx].split()[16] + ";" + lines[idx].split()[18] + "\n")
		idx = idx + 2
			
f.close()

out.close()
