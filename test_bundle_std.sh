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
       echo "rc$J - bundle"
       chmod +x ./testbundle.sh
       ./testbundle.sh $SET
       cd ..

done

chmod +x ./recover_times.sh
./recover_times_bundle.sh

for J in 2 3 4 5 6 7 8 9 10
do

       cd rc$J
       mv res_bundle.txt ../res_bundle_$J-$SET.txt
       cd ..

done

rm res_std.txt
cd ..

mv paper-test/res_std.csv ./res_bundle_std_$SET.csv
