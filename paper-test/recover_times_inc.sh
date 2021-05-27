#!/bin/bash

>res_inc.txt
for J in 2 3 4 5 6 7 8 9 10
do
       echo "rc$J - trill" >> res_inc.txt
       chmod +x ./collect_times.py
       ./collect_times.py rc$J/res_trill_inc.txt >> res_inc.txt
done
			
chmod +x ./create_csv.py
./create_csv.py res_inc.txt res_inc.csv


