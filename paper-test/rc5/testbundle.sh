
#!/bin/bash

cat  rc5.owl > temp.owl
echo "</Ontology>" >> temp.owl

>res_bundle.txt
#bundle
for X in $(seq 10)
do
	echo $X
	../bundle.sh -r pellet -m owlexp -t 10m --instance "http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#x","http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#B5" file:temp.owl &>> res_bundle.txt
done

rm temp.owl
