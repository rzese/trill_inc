#!/bin/bash

>res_std.txt
for J in 2 3 4 5 6 7 8 9 10
do
       echo "rc$J - trill" >> res_std.txt
       chmod +x ./collect_times.py
       ./collect_times.py rc$J/res_trill.txt >> res_std.txt
done
			
chmod +x ./create_csv.py
./create_csv.py res_std.txt res_std.csv

