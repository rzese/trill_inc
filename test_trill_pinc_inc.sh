#!/bin/bash

SET=3
RC=6


cd paper-test

for J in 0 1 2 3 4
do
  
       cd rc$RC
       echo "rc$RC - trill inc"
       chmod +x ./testtrill_pinc_inc_$J.sh
       ./testtrill_pinc_inc_$J.sh $SET
       cd ..

done

chmod +x ./recover_times_pinc_inc.sh
./recover_times_pinc_inc.sh

for J in 0 1 2 3 4
do

       cd rc$RC
       mv err_trill_inc.txt ../err_trill_pinc_inc_$J-$RC-$SET.txt
       mv res_trill_inc.txt ../res_trill_pinc_inc_$J-$RC-$SET.txt
       cd ..

       cd ..

       mv paper-test/res_inc_$J.txt ./res_trill_pinc_inc_$J-$RC-$SET.txt
       mv paper-test/res_inc_$J.csv ./res_trill_pinc_inc_$J-$RC-$SET.csv

       cd paper-test

done


