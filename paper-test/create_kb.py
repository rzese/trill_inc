#!/usr/bin/python

import sys
import random

n = int(sys.argv[1])
outtrill = "rc" + str(n) + "/" + str(sys.argv[2]) + ".pl"
outbundle = "rc" + str(n) + "/" + str(sys.argv[2]) + ".owl"

fot = open(outtrill, "w")
fob = open(outbundle, "w")

# Init OWL KB
fob.write('''<?xml version="1.0"?>
<Ontology xmlns="http://www.w3.org/2002/07/owl#"
     xml:base="http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3"
     xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
     xmlns:xml="http://www.w3.org/XML/1998/namespace"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
     xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
     ontologyIRI="http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3">
    <Prefix name="" IRI="http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3"/>
    <Prefix name="owl" IRI="http://www.w3.org/2002/07/owl#"/>
    <Prefix name="rdf" IRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>
    <Prefix name="xml" IRI="http://www.w3.org/XML/1998/namespace"/>
    <Prefix name="xsd" IRI="http://www.w3.org/2001/XMLSchema#"/>
    <Prefix name="rdfs" IRI="http://www.w3.org/2000/01/rdf-schema#"/>
    <Declaration>
        <Class IRI="#B0"/>
    </Declaration>

''')

for i in range(0, n):
    fob.write("\t<Declaration>\n\t\t<Class IRI='#B" + str(i + 1) + "'/>\n\t</Declaration>\n")
    fob.write("\t<Declaration>\n\t\t<Class IRI='#Q" + str(i + 1) + "'/>\n\t</Declaration>\n")
    fob.write("\t<Declaration>\n\t\t<Class IRI='#P" + str(i + 1) + "'/>\n\t</Declaration>\n")

fob.write('''
    <Declaration>
        <AnnotationProperty IRI="https://ai.unife.it/disponte#probability"/>
    </Declaration>
''')

# Add axioms to both OWL and PL KBs

for i in range(0, n):
    # Init probs
    p1 = random.uniform(0.0000001, 0.9)
    p2 = random.uniform(0.0000001, 0.9)
    p3 = random.uniform(0.0000001, 0.9)

    # Write PL KB
    fot.write("subClassOf(b" + str(i) + ",intersectionOf([p" + str(i + 1) + ",q" + str(i + 1) + "])).\n")
    fot.write("annotationAssertion('disponte:probability',subClassOf(b" + str(i) + ",intersectionOf([p" + str(
        i + 1) + ",q" + str(i + 1) + "])),literal('" + str(p1) + "')).\n")
    fot.write("subClassOf(p" + str(i + 1) + ",b" + str(i + 1) + ").\n")
    fot.write("annotationAssertion('disponte:probability',subClassOf(p" + str(i + 1) + ",b" + str(
        i + 1) + "),literal('" + str(p2) + "')).\n")
    fot.write("subClassOf(q" + str(i + 1) + ",b" + str(i + 1) + ").\n")
    fot.write("annotationAssertion('disponte:probability',subClassOf(q" + str(i + 1) + ",b" + str(
        i + 1) + "),literal('" + str(p3) + "')).\n")

    # Write OWL KB
    fob.write('''
    	<SubClassOf>
            <Annotation>
                <AnnotationProperty IRI="https://ai.unife.it/disponte#probability"/>
                <Literal datatypeIRI="http://www.w3.org/2001/XMLSchema#decimal">''' + str(p1) + '''</Literal>
            </Annotation>
            <Class IRI="#B''' + str(i) + '''"/>
            <ObjectIntersectionOf>
                <Class IRI="#P''' + str(i + 1) + '''"/>
                <Class IRI="#Q''' + str(i + 1) + '''"/>
            </ObjectIntersectionOf>
        </SubClassOf>
        <SubClassOf>
            <Annotation>
                <AnnotationProperty IRI="https://ai.unife.it/disponte#probability"/>
                <Literal datatypeIRI="http://www.w3.org/2001/XMLSchema#decimal">''' + str(p2) + '''</Literal>
            </Annotation>
            <Class IRI="#P''' + str(i + 1) + '''"/>
            <Class IRI="#B''' + str(i + 1) + '''"/>
        </SubClassOf>
        <SubClassOf>
            <Annotation>
                <AnnotationProperty IRI="https://ai.unife.it/disponte#probability"/>
                <Literal datatypeIRI="http://www.w3.org/2001/XMLSchema#decimal">''' + str(p3) + '''</Literal>
            </Annotation>
            <Class IRI="#Q''' + str(i + 1) + '''"/>
            <Class IRI="#B''' + str(i + 1) + '''"/>
        </SubClassOf>
    ''')

p1 = random.uniform(0.0000001, 0.9)

fot.write('''
classAssertion(b0,x).
annotationAssertion('disponte:probability',classAssertion(b0,x),literal(\'''' + str(p3) + '''\')).
''')

fob.write('''
	<ClassAssertion>
        <Class IRI="#x"/>
        <NamedIndividual IRI="#B0"/>
    	<Annotation>
            <AnnotationProperty IRI="https://ai.unife.it/disponte#probability"/>
            <Literal datatypeIRI="http://www.w3.org/2001/XMLSchema#decimal">''' + str(p1) + '''</Literal>
        </Annotation>
    </ClassAssertion>
''')

fot.close()
fob.close()

outtrill = "rc" + str(n) + "/" + "testtrill.sh"
fos = open(outtrill, "w")
fos.write('''
#!/bin/bash

#trill all
echo ":-use_module(library(trill))." > temp.pl
echo ":-trill." >> temp.pl
cat  rc''' + str(n) + '''.pl >> temp.pl

>res_trill.txt
for X in $(seq 10)
do
	echo $X

	echo "S is cputime,instanceOf(b''' + str(n) + ''',x,Expl,[return_prob(Prob)]),E is cputime, Time is E - S." | swipl --stack_limit=8G temp.pl >> res_trill.txt 2>> err_trill.txt
done

rm temp.pl
''')
fos.close()

outtrill = "rc" + str(n) + "/" + "testtrill_inc.sh"
fos = open(outtrill, "w")
fos.write('''
#!/bin/bash

#trill all
echo ":-use_module(library(trill_inc))." > temp.pl
echo ":-trill." >> temp.pl
cat  rc''' + str(n) + '''.pl >> temp.pl
if [[ $1 -eq 2 ]]
then
  echo "disjointClasses([b0,b1])." >> temp.pl
  echo "annotationAssertion('disponte:probability',disjointClasses([b0,b1]).,literal('0.6'))." >> temp.pl
elif [[ $1 -eq 3 ]]
then
  echo "disjointClasses([b''' + str(n - 1) + ''',b''' + str(n) + '''])." >> temp.pl
  echo "annotationAssertion('disponte:probability',disjointClasses([b''' + str(n - 1) + ''',b''' + str(n) + ''']),literal('0.6'))." >> temp.pl
elif [[ $1 -eq 4 ]]
then
  echo "subClassOf(c0,intersectionOf([c01,c02]))." >> temp.pl
  echo "annotationAssertion('disponte:probability',subClassOf(c0,intersectionOf([c01,c02])),literal('0.2'))." >> temp.pl
  echo "subClassOf(c01,c1)." >> temp.pl
  echo "annotationAssertion('disponte:probability',subClassOf(c01,c1),literal('0.3'))." >> temp.pl
  echo "subClassOf(c02,c1)." >> temp.pl
  echo "annotationAssertion('disponte:probability',subClassOf(c02,c1),literal('0.4'))." >> temp.pl
  echo "classAssertion(c0,x)." >> temp.pl
  echo "annotationAssertion('disponte:probability',classAssertion(c0,x),literal('0.6'))." >> temp.pl
fi

>res_trill_inc.txt
for X in $(seq 10)
do
	echo $X
	if [[ $1 -eq 4 ]]
	then
	  echo "S is cputime,instanceOf(c1,x,Expl,[return_prob(Prob)]),E is cputime, Time is E - S." | swipl --stack_limit=8G temp.pl >> res_trill_inc.txt 2>> err_trill_inc.txt
	else
	  echo "S is cputime,instanceOf(b''' + str(n) + ''',x,Expl,[return_prob(Prob)]),E is cputime, Time is E - S." | swipl --stack_limit=8G temp.pl >> res_trill_inc.txt 2>> err_trill_inc.txt
	fi

done

rm temp.pl
''')
fos.close()

outtrill = "rc" + str(n) + "/" + "testbundle.sh"
fos = open(outtrill, "w")
fos.write('''
#!/bin/bash

cat  rc''' + str(n) + '''.owl > temp.owl
echo "</Ontology>" >> temp.owl

>res_bundle.txt
#bundle
for X in $(seq 10)
do
	echo $X
	../bundle.sh -r pellet -m glass -t 10m --instance "http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#x","http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#B''' + str(
    n) + '''" file:temp.owl &>> res_bundle.txt
done
''')
fos.close()

outtrill = "rc" + str(n) + "/" + "testbundle_inc.sh"
fos = open(outtrill, "w")
fos.write('''
#!/bin/bash

cat  rc''' + str(n) + '''.owl > temp.owl
if [[ $1 -eq 2 ]]
then
  echo "	<DisjointClasses>" >> temp.owl
  echo "    	<Class IRI='#B0'/>" >> temp.owl
  echo "		<Class IRI='#B1'/>" >> temp.owl
  echo "		<Annotation>" >> temp.owl
  echo "		    <AnnotationProperty IRI='https://ai.unife.it/disponte#probability'/>" >> temp.owl
  echo "		    <Literal datatypeIRI='http://www.w3.org/2001/XMLSchema#decimal'>0.2</Literal>" >> temp.owl
  echo "		</Annotation>" >> temp.owl
  echo "	</DisjointClasses>" >> temp.owl
elif [[ $1 -eq 3 ]]
then
  echo "	<DisjointClasses>" >> temp.owl
  echo "    	<Class IRI='#B''' + str(n - 1) + ''''/>" >> temp.owl
  echo "		<Class IRI='#B''' + str(n) + ''''/>" >> temp.owl
  echo "		<Annotation>" >> temp.owl
  echo "		    <AnnotationProperty IRI='https://ai.unife.it/disponte#probability'/>" >> temp.owl
  echo "		    <Literal datatypeIRI='http://www.w3.org/2001/XMLSchema#decimal'>0.3</Literal>" >> temp.owl
  echo "		</Annotation>" >> temp.owl
  echo "	</DisjointClasses>" >> temp.owl
elif [[ $1 -eq 4 ]]
then
  echo "	<SubClassOf>" >> temp.owl
  echo "        <Annotation>" >> temp.owl
  echo "            <AnnotationProperty IRI='https://ai.unife.it/disponte#probability'/>" >> temp.owl
  echo "           <Literal datatypeIRI='http://www.w3.org/2001/XMLSchema#decimal'>0.2</Literal>" >> temp.owl
  echo "        </Annotation>" >> temp.owl
  echo "        <Class IRI='#C0'/>" >> temp.owl
  echo "        <ObjectIntersectionOf>" >> temp.owl
  echo "            <Class IRI='#C01'/>" >> temp.owl
  echo "            <Class IRI='#C02'/>" >> temp.owl
  echo "        </ObjectIntersectionOf>" >> temp.owl
  echo "    </SubClassOf>" >> temp.owl
  echo "    <SubClassOf>" >> temp.owl
  echo "        <Annotation>" >> temp.owl
  echo "            <AnnotationProperty IRI='https://ai.unife.it/disponte#probability'/>" >> temp.owl
  echo "            <Literal datatypeIRI='http://www.w3.org/2001/XMLSchema#decimal'>0.3</Literal>" >> temp.owl
  echo "        </Annotation>" >> temp.owl
  echo "        <Class IRI='#C01'/>" >> temp.owl
  echo "        <Class IRI='#C1'/>" >> temp.owl
  echo "   </SubClassOf>" >> temp.owl
  echo "    <SubClassOf>" >> temp.owl
  echo "        <Annotation>" >> temp.owl
  echo "            <AnnotationProperty IRI='https://ai.unife.it/disponte#probability'/>" >> temp.owl
  echo "            <Literal datatypeIRI='http://www.w3.org/2001/XMLSchema#decimal'>0.4</Literal>" >> temp.owl
  echo "        </Annotation>" >> temp.owl
  echo "        <Class IRI='#C02'/>" >> temp.owl
  echo "        <Class IRI='#C1'/>" >> temp.owl
  echo "    </SubClassOf>" >> temp.owl
  echo "	<ClassAssertion>" >> temp.owl
  echo "        <Class IRI='#C0'/>" >> temp.owl
  echo "        <NamedIndividual IRI='#x'/>" >> temp.owl
  echo "    	<Annotation>" >> temp.owl
  echo "            <AnnotationProperty IRI='https://ai.unife.it/disponte#probability'/>" >> temp.owl
  echo "            <Literal datatypeIRI='http://www.w3.org/2001/XMLSchema#decimal'>0.6</Literal>" >> temp.owl
  echo "        </Annotation>" >> temp.owl
  echo "    </ClassAssertion>" >> temp.owl
fi
echo "</Ontology>" >> temp.owl

>res_bundle_inc.txt
#bundle
for X in $(seq 10)
do
	echo $X
	if [[ $1 -eq 4 ]]
	then
	  ../bundle.sh -r pellet -m glass -t 10m -wi --instance "http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#x","http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#C1" file:temp.owl &>> res_bundle_inc.txt
	else
	  ../bundle.sh -r pellet -m glass -t 10m -wi --instance "http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#x","http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#B''' + str(n) + '''" file:temp.owl &>> res_bundle_inc.txt
	fi
done
''')
fos.close()


