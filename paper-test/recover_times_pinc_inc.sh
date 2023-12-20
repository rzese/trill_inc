#!/bin/bash


RC=6

>res_inc.txt
echo "rc$RC - trill" >> res_inc.txt
chmod +x ./collect_times_pinc.py
./collect_times_pinc.py $RC trill
			
chmod +x ./create_csv_pinc.py
./create_csv_pinc.py res_inc_0.txt res_inc_0.csv
./create_csv_pinc.py res_inc_1.txt res_inc_1.csv
./create_csv_pinc.py res_inc_2.txt res_inc_2.csv
./create_csv_pinc.py res_inc_3.txt res_inc_3.csv
./create_csv_pinc.py res_inc_4.txt res_inc_4.csv



