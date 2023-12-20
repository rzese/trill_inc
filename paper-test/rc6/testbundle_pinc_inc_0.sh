
  #!/bin/bash

  cat  rc6_0.owl > temp.owl
  echo "	<DisjointClasses>" >> temp.owl
  echo "    	<Class IRI='#B5'/>" >> temp.owl
  echo "		<Class IRI='#B6'/>" >> temp.owl
  
  echo "	</DisjointClasses>" >> temp.owl
  echo "</Ontology>" >> temp.owl

  >res_bundle_inc0.txt
  #bundle
  for X in $(seq 5)
  do
      echo $X
      ../bundle.sh -r pellet -m owlexp -t 10m -wi --instance "http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#x","http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#B6" file:temp.owl &>> res_bundle_inc_0.txt
  done

  rm temp.owl
  