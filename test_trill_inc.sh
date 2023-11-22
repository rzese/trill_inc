#!/bin/bash

SET=1
if [[ $1 -eq 2 ]]
then
  SET=2
elif [[ $1 -eq 3 ]]
then
  SET=3
elif [[ $1 -eq 4 ]]
then
  SET=4
fi


cd paper-test

for J in 2 3 4 5 6 7 8 9 10
do
  
       cd rc$J
       echo "rc$J - trill inc"
       chmod +x ./testtrill_inc.sh
       ./testtrill_inc.sh $SET
       cd ..

done

chmod +x ./recover_times_inc.sh
./recover_times_inc.sh

for J in 2 3 4 5 6 7 8 9 10
do
  
       cd rc$J
       mv err_trill_inc.txt ../err_trill_inc_$SET.txt
       mv res_trill_inc.txt ../res_trill_inc_$SET.txt
       cd ..

done

#rm res_inc.txt
cd ..

mv paper-test/res_inc.csv ./res_inc_$SET.csv
