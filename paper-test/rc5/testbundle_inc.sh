
#!/bin/bash

cat  rc5.owl > temp.owl
if [[ $1 -eq 2 ]]
then
  echo "	<DisjointClasses>" >> temp.owl
  echo "    	<Class IRI='#B0'/>" >> temp.owl
  echo "		<Class IRI='#B1'/>" >> temp.owl
  echo "	</DisjointClasses>" >> temp.owl
elif [[ $1 -eq 3 ]]
then
  echo "	<DisjointClasses>" >> temp.owl
  echo "    	<Class IRI='#B4'/>" >> temp.owl
  echo "		<Class IRI='#B5'/>" >> temp.owl
  echo "	</DisjointClasses>" >> temp.owl
elif [[ $1 -eq 4 ]]
then
  echo "	<SubClassOf>" >> temp.owl
  echo "        <Class IRI='#C0'/>" >> temp.owl
  echo "        <ObjectIntersectionOf>" >> temp.owl
  echo "            <Class IRI='#C01'/>" >> temp.owl
  echo "            <Class IRI='#C02'/>" >> temp.owl
  echo "        </ObjectIntersectionOf>" >> temp.owl
  echo "    </SubClassOf>" >> temp.owl
  echo "    <SubClassOf>" >> temp.owl
  echo "        <Class IRI='#C01'/>" >> temp.owl
  echo "        <Class IRI='#C1'/>" >> temp.owl
  echo "   </SubClassOf>" >> temp.owl
  echo "    <SubClassOf>" >> temp.owl
  echo "        <Class IRI='#C02'/>" >> temp.owl
  echo "        <Class IRI='#C1'/>" >> temp.owl
  echo "    </SubClassOf>" >> temp.owl
  echo "	<ClassAssertion>" >> temp.owl
  echo "        <Class IRI='#C0'/>" >> temp.owl
  echo "        <NamedIndividual IRI='#x'/>" >> temp.owl
  echo "    	<Annotation>" >> temp.owl
  echo "            <AnnotationProperty IRI='https://ai.unife.it/disponte#probability'/>" >> temp.owl
  echo "            <Literal datatypeIRI='http://www.w3.org/2001/XMLSchema#decimal'>0.5</Literal>" >> temp.owl
  echo "        </Annotation>" >> temp.owl
  echo "    </ClassAssertion>" >> temp.owl
  echo "	<DisjointClasses>" >> temp.owl
  echo "    	<Class IRI='#B4'/>" >> temp.owl
  echo "		<Class IRI='#B5'/>" >> temp.owl
  echo "	</DisjointClasses>" >> temp.owl
fi
echo "</Ontology>" >> temp.owl

>res_bundle_inc.txt
#bundle
for X in $(seq 10)
do
	echo $X
	if [[ $1 -eq 4 ]]
	then
	  ../bundle.sh -r pellet -m owlexp -t 10m -wi --instance "http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#x","http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#C1" file:temp.owl &>> res_bundle_inc.txt
	else
	  ../bundle.sh -r pellet -m owlexp -t 10m -wi --instance "http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#x","http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#B5" file:temp.owl &>> res_bundle_inc.txt
	fi
done

rm temp.owl
