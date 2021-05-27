#!/bin/bash

SET=1
if [[ $1 -eq 2 ]]
then
  SET=2
elif [[ $1 -eq 3 ]]
then
  SET=3
fi


cd paper-test

for J in 2 3 4 5 6 7 8 9 10
do
  
       cd rc$J
       echo "rc$J - trill"
       chmod +x ./testtrill.sh
       ./testtrill.sh $SET
       cd ..

done

chmod +x ./recover_times.sh
./recover_times.sh

for J in 2 3 4 5 6 7 8 9 10
do
  
       cd rc$J
       rm err_trill.txt
       rm res_trill.txt
       cd ..

done

rm res_std.txt
cd ..

mv paper-test/res_std.csv ./res_std_$SET.csv
