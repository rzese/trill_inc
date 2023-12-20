
#!/bin/bash

#trill all
echo ":-use_module(library(trill_inc))." > temp.pl
echo ":-trill." >> temp.pl
cat  rc5.pl >> temp.pl
if [[ $1 -eq 2 ]]
then
  echo "disjointClasses([b0,b1])." >> temp.pl

elif [[ $1 -eq 3 ]]
then
  echo "disjointClasses([b4,b5])." >> temp.pl

elif [[ $1 -eq 4 ]]
then
  echo "subClassOf(c0,intersectionOf([c01,c02]))." >> temp.pl

  echo "subClassOf(c01,c1)." >> temp.pl

  echo "subClassOf(c02,c1)." >> temp.pl

  echo "classAssertion(c0,x)." >> temp.pl
  echo "annotationAssertion('disponte:probability',classAssertion(c0,x),literal('0.5'))." >> temp.pl
  echo "disjointClasses([b4,b5])." >> temp.pl

fi

>res_trill_inc.txt
for X in $(seq 10)
do
	echo $X
	if [[ $1 -eq 4 ]]
	then
	  echo "S is cputime,instanceOf(c1,x,Expl,[return_prob(Prob)]),E is cputime, Time is E - S." | swipl --stack_limit=8G temp.pl >> res_trill_inc.txt 2>> err_trill_inc.txt
	else
	  echo "S is cputime,instanceOf(b5,x,Expl,[return_prob(Prob)]),E is cputime, Time is E - S." | swipl --stack_limit=8G temp.pl >> res_trill_inc.txt 2>> err_trill_inc.txt
	fi

done

rm temp.pl
