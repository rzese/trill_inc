#!/bin/bash

SET=3
RC=6


cd paper-test

for J in 0 1 2 3 4
do
  
       cd rc$RC
       echo "rc$RC - bundle inc"
       chmod +x ./testbundle_pinc_inc_$J.sh
       ./testbundle_pinc_inc_$J.sh $SET
       cd ..

done

chmod +x ./recover_times_bundle_pinc_inc.sh
./recover_times_bundle_pinc_inc.sh

for J in 0 1 2 3 4
do
  
       cd rc$RC
       mv res_bundle_inc.txt ../res_bundle_inc_$J-$RC-$SET.txt
       cd ..

       cd ..

       mv paper-test/res_inc_$J.txt ./res_bundle_pinc_inc_$J-$RC-$SET.txt
       mv paper-test/res_inc_$J.csv ./res_bundle_pinc_inc_$J-$RC-$SET.csv

       cd paper-test

done
