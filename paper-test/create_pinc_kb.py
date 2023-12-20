#!/usr/bin/python

import sys
import random

n = 6

for pi in range(0,6):

  outtrill = "rc" + str(n) + "/rc" + str(n) + "_" + str(pi) + ".pl"
  outbundle = "rc" + str(n) + "/rc" + str(n) + "_" + str(pi) + ".owl"

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
      if pi > 2:
        fot.write("annotationAssertion('disponte:probability',subClassOf(b" + str(i) + ",intersectionOf([p" + str(
            i + 1) + ",q" + str(i + 1) + "])),literal('" + str(p1) + "')).\n")
      fot.write("subClassOf(p" + str(i + 1) + ",b" + str(i + 1) + ").\n")
      if pi > 3:
        fot.write("annotationAssertion('disponte:probability',subClassOf(p" + str(i + 1) + ",b" + str(
            i + 1) + "),literal('" + str(p2) + "')).\n")
      fot.write("subClassOf(q" + str(i + 1) + ",b" + str(i + 1) + ").\n")
      if pi > 4:
        fot.write("annotationAssertion('disponte:probability',subClassOf(q" + str(i + 1) + ",b" + str(
            i + 1) + "),literal('" + str(p3) + "')).\n")

      # Write OWL KB
      fob.write('''
          <SubClassOf>''')
      if pi > 2:
        fob.write('''
              <Annotation>
                  <AnnotationProperty IRI="https://ai.unife.it/disponte#probability"/>
                  <Literal datatypeIRI="http://www.w3.org/2001/XMLSchema#decimal">''' + str(p1) + '''</Literal>
              </Annotation>''')
      fob.write('''
              <Class IRI="#B''' + str(i) + '''"/>
              <ObjectIntersectionOf>
                  <Class IRI="#P''' + str(i + 1) + '''"/>
                  <Class IRI="#Q''' + str(i + 1) + '''"/>
              </ObjectIntersectionOf>
          </SubClassOf>
          <SubClassOf>''')
      if pi > 3:
        fob.write('''
              <Annotation>
                  <AnnotationProperty IRI="https://ai.unife.it/disponte#probability"/>
                  <Literal datatypeIRI="http://www.w3.org/2001/XMLSchema#decimal">''' + str(p2) + '''</Literal>
              </Annotation>''')
      fob.write('''
              <Class IRI="#P''' + str(i + 1) + '''"/>
              <Class IRI="#B''' + str(i + 1) + '''"/>
          </SubClassOf>
          <SubClassOf>''')
      if pi > 4:
        fob.write('''
              <Annotation>
                  <AnnotationProperty IRI="https://ai.unife.it/disponte#probability"/>
                  <Literal datatypeIRI="http://www.w3.org/2001/XMLSchema#decimal">''' + str(p3) + '''</Literal>
              </Annotation>''')
      fob.write('''
              <Class IRI="#Q''' + str(i + 1) + '''"/>
              <Class IRI="#B''' + str(i + 1) + '''"/>
          </SubClassOf>
      ''')

  p1 = random.uniform(0.0000001, 0.9)

  fot.write('''
classAssertion(b0,x).
''')
  if pi > 0:
    fot.write('''annotationAssertion('disponte:probability',classAssertion(b0,x),literal(\'''' + str(p3) + '''\')).
  ''')

  fob.write('''
      <ClassAssertion>
          <Class IRI="#B0"/>
          <NamedIndividual IRI="#x"/>''')
  if pi > 0:
    fob.write('''
          <Annotation>
              <AnnotationProperty IRI="https://ai.unife.it/disponte#probability"/>
              <Literal datatypeIRI="http://www.w3.org/2001/XMLSchema#decimal">''' + str(p1) + '''</Literal>
          </Annotation>''')
  fob.write('''
      </ClassAssertion>
  ''')

  fot.close()
  fob.close()

  outtrill = "rc" + str(n) + "/" + "testtrill_pinc_inc_" + str(pi) +".sh"
  fos = open(outtrill, "w")
  fos.write('''
  #!/bin/bash

  #trill all
  echo ":-use_module(library(trill_inc))." > temp.pl
  echo ":-trill." >> temp.pl
  cat  rc''' + str(n) + '''_''' + str(pi) +'''.pl >> temp.pl
  echo "disjointClasses([b''' + str(n - 1) + ''',b''' + str(n) + '''])." >> temp.pl
  ''')
  if pi > 1:
      fos.write('''
  echo "annotationAssertion('disponte:probability',disjointClasses([b''' + str(n - 1) + ''',b''' + str(n) + ''']),literal('0.6'))." >> temp.pl''')
  fos.write('''

  >res_trill_inc'''+str(pi)+'''.txt
  for X in $(seq 5)
  do
      echo $X
      echo "S is cputime,instanceOf(b''' + str(n) + ''',x,Expl,[return_prob(Prob)]),E is cputime, Time is E - S." | swipl --stack_limit=8G temp.pl >> res_trill_inc_''' + str(pi) + '''.txt 2>> err_trill_inc_''' + str(pi) + '''.txt

  done

  rm temp.pl
  ''')
  fos.close()

  outtrill = "rc" + str(n) + "/" + "testbundle_pinc_inc_" + str(pi) +".sh"
  fos = open(outtrill, "w")
  fos.write('''
  #!/bin/bash

  cat  rc''' + str(n) + '''_''' + str(pi) +'''.owl > temp.owl
  echo "	<DisjointClasses>" >> temp.owl
  echo "    	<Class IRI='#B''' + str(n - 1) + ''''/>" >> temp.owl
  echo "		<Class IRI='#B''' + str(n) + ''''/>" >> temp.owl
  ''')
  if pi > 1:
      fos.write('''
  echo "	    <Annotation>" >> temp.owl
  echo "		    <AnnotationProperty IRI='https://ai.unife.it/disponte#probability'/>" >> temp.owl
  echo "		    <Literal datatypeIRI='http://www.w3.org/2001/XMLSchema#decimal'>0.6</Literal>" >> temp.owl
  echo "		</Annotation>" >> temp.owl
  ''')
  fos.write('''
  echo "	</DisjointClasses>" >> temp.owl
  echo "</Ontology>" >> temp.owl

  >res_bundle_inc'''+str(pi)+'''.txt
  #bundle
  for X in $(seq 5)
  do
      echo $X
      ../bundle.sh -r pellet -m owlexp -t 10m -wi --instance "http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#x","http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#B''' + str(n) + '''" file:temp.owl &>> res_bundle_inc_''' + str(pi) + '''.txt
  done

  rm temp.owl
  ''')
  fos.close()


