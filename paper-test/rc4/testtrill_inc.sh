#!/bin/bash

#trill all
echo ":-use_module(library(trill_inc))." > temp.pl
echo ":-trill." >> temp.pl
cat  rc4.pl >> temp.pl
if [[ $1 -eq 2 ]]
then
  echo "disjointClasses([b0,b1])." >> temp.pl
elif [[ $1 -eq 3 ]]
then
  echo "disjointClasses([b3,b4])." >> temp.pl
fi

>res_trill_inc.txt
for X in $(seq 10)
do
	echo $X

	echo "S is cputime,instanceOf(b0,x,Expl,[return_prob(Prob)]),E is cputime, Time is E - S." | swipl --stack_limit=8G temp.pl >> res_trill_inc.txt 2>> err_trill_inc.txt
done

rm temp.pl
