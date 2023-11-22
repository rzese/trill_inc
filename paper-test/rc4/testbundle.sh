
#!/bin/bash

cat  rc4.owl > temp.owl
echo "</Ontology>" >> temp.owl

>res_bundle.txt
#bundle
for X in $(seq 10)
do
	echo $X
	../bundle.sh -r pellet -m glass -t 10m --instance "http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#x","http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#B4" file:temp.owl &>> res_bundle.txt
done
