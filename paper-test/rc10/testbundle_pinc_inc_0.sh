
  #!/bin/bash

  cat  rc10_0.owl > temp.owl
  echo "	<DisjointClasses>" >> temp.owl
  echo "    	<Class IRI='#B9'/>" >> temp.owl
  echo "		<Class IRI='#B10'/>" >> temp.owl
  echo "	</DisjointClasses>" >> temp.owl
  echo "</Ontology>" >> temp.owl

  >res_bundle_inc.txt
  #bundle
  for X in $(seq 5)
  do
      echo $X
      ../bundle.sh -r pellet -m owlexp -t 10m -wi --instance "http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#x","http://www.semanticweb.org/riccardo/ontologies/2017/5/untitled-ontology-3#B10" file:temp.owl &>> res_bundle_inc.txt
  done

  rm temp.owl
  