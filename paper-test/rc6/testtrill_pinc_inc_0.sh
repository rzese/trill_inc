
  #!/bin/bash

  #trill all
  echo ":-use_module(library(trill_inc))." > temp.pl
  echo ":-trill." >> temp.pl
  cat  rc6_0.pl >> temp.pl
  echo "disjointClasses([b5,b6])." >> temp.pl
  

  >res_trill_inc0.txt
  for X in $(seq 5)
  do
      echo $X
      echo "S is cputime,instanceOf(b6,x,Expl,[return_prob(Prob)]),E is cputime, Time is E - S." | swipl --stack_limit=8G temp.pl >> res_trill_inc_0.txt 2>> err_trill_inc_0.txt

  done

  rm temp.pl
  