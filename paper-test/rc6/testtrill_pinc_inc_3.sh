
  #!/bin/bash

  #trill all
  echo ":-use_module(library(trill_inc))." > temp.pl
  echo ":-trill." >> temp.pl
  cat  rc6_3.pl >> temp.pl
  echo "disjointClasses([b5,b6])." >> temp.pl
  
  echo "annotationAssertion('disponte:probability',disjointClasses([b5,b6]),literal('0.6'))." >> temp.pl

  >res_trill_inc3.txt
  for X in $(seq 5)
  do
      echo $X
      echo "S is cputime,instanceOf(b6,x,Expl,[return_prob(Prob)]),E is cputime, Time is E - S." | swipl --stack_limit=8G temp.pl >> res_trill_inc_3.txt 2>> err_trill_inc_3.txt

  done

  rm temp.pl
  