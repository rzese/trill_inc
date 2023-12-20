#!/usr/bin/python

import sys
import numpy

namein="rc" + str(sys.argv[1]) + "/res_" + str(sys.argv[2]) + "_inc_"
nameout="res_inc_"

tt=[]
tbdd=[]
tr=[]
ttp=0
ttpb=0
maxt = 0
mint = 1000000
ct = 0
ctp=0
ctpb=0
sec=0
prob=-1

for i in range(0,5):
	prob=-1
	with open(namein + str(i) + ".txt", "r") as f:
		lines = f.readlines()
		for line in lines:
			if "Time =" in line:		# TRILL
				t = float(line.split()[2][:-1])
				tt.append(t)
				ct = ct +1
				if t < mint:
					mint = t
				if t > maxt:
					maxt = t
			elif "Prob =" in line:
				p = line.split()[2][:-1]
				if prob==-1:
					if "NaN" in p:
						prob = p
					else:
						prob = float(p)
				elif "NaN" in p:
					if prob!=p:
						print("Error in prob, should be" + str(prob) + ", it is " + p)
				elif prob!=float(p):
					print("Error in prob, should be" + str(prob) + ", it is " + p)
			elif "BDD build" in line:
				t = float(line.split()[2])
				tbdd.append(t)
			elif "Prob comp:" in line:
				t = float(line.split()[2])
				tbdd[-1] = tbdd[-1] + t
			elif "Repair:" in line:
				t = float(line.split()[1])
				tr.append(t)
			elif "Execution time" in line:  # BUNDLE
				t = float(line.split()[3])
				tt.append(t)
				ct = ct +1
				if t < mint:
					mint = t
				if t > maxt:
					maxt = t
			elif "Probability computation (ms)" in line:
				t = float(line.split()[4])
				tbdd.append(t)
			elif "Repair semantics check" in line:
				t = float(line.split()[5])
				tr.append(t)
			elif "Probability of the query:" in line:
				p = line.split()[4]
				if prob==-1:
					if "NaN" in p:
						prob = p
					else:
						prob = float(p)
				elif "NaN" in p:
					if prob!=p:
						print("Error in prob, should be" + str(prob) + ", it is " + p)
				elif prob!=float(p):
					print("Error in prob, should be" + str(prob) + ", it is " + p)

	f.close()
	if len(tt)>0:
		tta = numpy.average(tt)
		ttstd = numpy.std(tt)
	else:
		tta = 0.0
		ttstd = 0.0

	if len(tbdd)>0:
		tbdda = numpy.average(tbdd)
		tbddstd = numpy.std(tbdd)
	else:
		tbdda = 0.0
		tbddstd = 0.0

	if len(tr)>0:
		tra = numpy.average(tr)
		trstd = numpy.std(tr)
	else:
		tra = 0.0
		trstd = 0.0

	with open(nameout + str(i) + ".txt", "w") as f:
		f.write("time: " + str(tta) + " pm " + str(ttstd) + " on " + str(ct) + " Prob: " + str(prob) + " max-min " + str(maxt) + " " + str(mint) + " bdd " + str(tbdda) + " pm " + str(tbddstd) + " repair " + str(tra) + " pm " + str(trstd)+"\n")
