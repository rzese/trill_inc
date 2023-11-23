#!/usr/bin/python

import sys
import numpy

namein=str(sys.argv[1])

tt=[]
ttp=0
ttpb=0
max = 0
min = 1000000
ct = 0
ctp=0
ctpb=0
sec=0
prob=-1

with open(namein, "r") as f:
	lines = f.readlines()
	for line in lines:
		if "Time =" in line:
			t = float(line.split()[2][:-1])
			tt.append(t)
			ct = ct +1
			if t < min:
				min = t
			if t > max:
				max = t
		elif "Prob =" in line:
			p = line.split()[2][:-1]
			if prob==-1:
				prob = float(p)
			elif prob!=float(p):
				print("Error in prob, should be" + str(prob) + ", it is " + p)
		elif "Execution" in line:
			t = float(line.split()[3][:-1])
			tt.append(t)
			ct = ct +1
			if t < min:
				min = t
			if t > max:
				max = t
		elif "Probability" in line:
			p = line.split()[4][:-1]
			if prob==-1:
				prob = float(p)
			elif prob!=float(p):
				print("Error in prob, should be" + str(prob) + ", it is " + p)

f.close()
tta = numpy.average(tt)
ttstd = numpy.std(tt)

print("time: " + str(tta) + " pm " + str(ttstd) + " on " + str(ct) + " Prob: " + str(prob) + " max-min " + str(max) + " " + str(min))
