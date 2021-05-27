#!/usr/bin/python

import sys

namein=str(sys.argv[1])

tt=0
ttp=0
ttpb=0
ct=0
ctp=0
ctpb=0
sec=0
prob=-1

with open(namein, "r") as f:
	lines = f.readlines()
	for line in lines:
		if "Time" in line:
			t = line.split()[2][:-1]
			tt = tt + float(t)
			ct = ct +1
		elif "Prob" in line:
			p = line.split()[2][:-1]
			if prob==-1:
				prob = float(p)
			elif prob!=float(p):
				print("Error in prob, should be" + str(prob) + ", it is " + p)

f.close()
tta = 0
if ct > 0:
	tta=tt/ct

print("time: " + str(tta) + " on " + str(ct) + " Prob: " + str(prob))
