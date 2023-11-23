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
       echo "rc$J - bundle inc"
       chmod +x ./testbundle_inc.sh
       ./testbundle_inc.sh $SET
       cd ..

done

chmod +x ./recover_times_inc.sh
./recover_times_bundle_inc.sh

for J in 2 3 4 5 6 7 8 9 10
do
  
       cd rc$J
       mv res_bundle_inc.txt ../res_bundle_inc_$SET.txt
       cd ..

done

rm res_inc.txt
cd ..

mv paper-test/res_inc.csv ./res_inc_$SET.csv
