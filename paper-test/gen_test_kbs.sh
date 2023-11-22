#!/bin/bash

for Y in 2 3 4 5 6 7 8 9 10
do
	mkdir rc$Y
	python ./create_kb.py $Y rc$Y
	#chmod +x rc$X-$Y/test.sh
	chmod +x rc$Y/testtrill.sh
	chmod +x rc$Y/testbundle.sh
	chmod +x rc$Y/testtrill_inc.sh
	chmod +x rc$Y/testbundle_inc.sh
done
