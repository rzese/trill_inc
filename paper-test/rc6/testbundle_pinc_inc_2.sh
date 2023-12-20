
  #!/bin/bash

  cat  rc6_2.owl > temp.owl
  echo "	<DisjointClasses>" >> temp.owl
  echo "    	<Class IRI='#B5'/>" >> temp.owl
  echo "		<Class IRI='#B6'/>" >> temp.owl
  
  echo "	    <Annotation>" >> temp.owl
  echo "		    <AnnotationProperty IRI='https://ai.unife.it/disponte#probability'/>" >> temp.owl
  echo "		    <Literal datatypeIRI='http://www.w3.org/2001/XMLSchema#decimal'>0.6</Literal>" >> temp.owl
  echo "		</Annotation>" >> temp.owl
  
  echo "	</DisjointClasses>" >> temp.owl
  echo "</Ontology>" >> temp.owl

  >res_bundle_inc2.txt
  #bundle
  for X in $(seq 5)
  do
      echo $X
      ../bundle.sh -r pellet -m owlexp -t 10m -wi --instance "http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#x","http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#B6" file:temp.owl &>> res_bundle_inc_2.txt
  done

  rm temp.owl
  