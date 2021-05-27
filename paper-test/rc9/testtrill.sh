#!/bin/bash

#trill all
echo ":-use_module(library(trill))." > temp.pl
echo ":-trill." >> temp.pl
cat  rc9.pl >> temp.pl

>res_trill.txt
for X in $(seq 10)
do
	echo $X

	echo "S is cputime,instanceOf(b0,x,Expl,[return_prob(Prob)]),E is cputime, Time is E - S." | swipl --stack_limit=8G temp.pl >> res_trill.txt 2>> err_trill.txt
done

rm temp.pl
