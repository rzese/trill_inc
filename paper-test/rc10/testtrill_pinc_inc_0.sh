
  #!/bin/bash

  #trill all
  echo ":-use_module(library(trill_inc))." > temp.pl
  echo ":-trill." >> temp.pl
  cat  rc10_0.pl >> temp.pl
  echo "disjointClasses([b9,b10])." >> temp.pl

  >res_trill_inc.txt
  for X in $(seq 5)
  do
      echo $X
      echo "S is cputime,instanceOf(b10,x,Expl,[return_prob(Prob)]),E is cputime, Time is E - S." | swipl --stack_limit=8G temp.pl >> res_trill_inc.txt 2>> err_trill_inc.txt

  done

  rm temp.pl
  