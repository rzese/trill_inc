:-use_module(library(trill_inc)).

:- trill.

/*
This knowledge base is inpired by the people+pets ontology from
Patel-Schneider, P, F., Horrocks, I., and Bechhofer, S. 2003. Tutorial on OWL.
The knowledge base indicates that the individuals that own an animal which is a pet are nature lovers, from
Zese, R.: Reasoning with Probabilistic Logics. ArXiv e-prints 1405.0915v3. 
Doctoral Consortium of the 30th International Conference on Logic Programming (ICLP 2014), July 19-22, Vienna, Austria.
*/

/** <examples>

?- prob_instanceOf('natureLover','Kevin',Prob).
?- instanceOf('natureLover','Kevin',ListExpl).

*/

owl_rdf('<?xml version="1.0"?>

<!DOCTYPE rdf:RDF [
    <!ENTITY owl "http://www.w3.org/2002/07/owl#" >
    <!ENTITY xsd "http://www.w3.org/2001/XMLSchema#" >
    <!ENTITY rdfs "http://www.w3.org/2000/01/rdf-schema#" >
    <!ENTITY rdf "http://www.w3.org/1999/02/22-rdf-syntax-ns#" >
    <!ENTITY disponte "https://sites.google.com/a/unife.it/ml/disponte#" >
]>


<rdf:RDF xmlns="http://cohse.semanticweb.org/ontologies/people#"
     xml:base="http://cohse.semanticweb.org/ontologies/people"
     xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
     xmlns:owl="http://www.w3.org/2002/07/owl#"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
     xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
     xmlns:disponte="https://sites.google.com/a/unife.it/ml/disponte#">
    <owl:Ontology rdf:about="http://cohse.semanticweb.org/ontologies/people"/>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Annotation properties
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- https://sites.google.com/a/unife.it/ml/disponte#probability -->

    <owl:AnnotationProperty rdf:about="&disponte;probability"/>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Object Properties
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://cohse.semanticweb.org/ontologies/people#has_animal -->

    <owl:ObjectProperty rdf:about="http://cohse.semanticweb.org/ontologies/people#has_animal">
        <rdfs:label>has_animal</rdfs:label>
        <rdfs:comment></rdfs:comment>
    </owl:ObjectProperty>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Classes
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://cohse.semanticweb.org/ontologies/people#cat -->

    <!--owl:Class rdf:about="http://cohse.semanticweb.org/ontologies/people#cat">
        <rdfs:label>cat</rdfs:label>
        <rdfs:subClassOf rdf:resource="http://cohse.semanticweb.org/ontologies/people#pet"/>
        <rdfs:comment></rdfs:comment>
    </owl:Class>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.6</disponte:probability>
        <owl:annotatedSource rdf:resource="http://cohse.semanticweb.org/ontologies/people#cat"/>
        <owl:annotatedTarget rdf:resource="http://cohse.semanticweb.org/ontologies/people#pet"/>
        <owl:annotatedProperty rdf:resource="&rdfs;subClassOf"/>
    </owl:Axiom-->
    


    <!-- http://cohse.semanticweb.org/ontologies/people#natureLover -->

    <owl:Class rdf:about="http://cohse.semanticweb.org/ontologies/people#natureLover"/>
    


    <!-- http://cohse.semanticweb.org/ontologies/people#pet -->

    <owl:Class rdf:about="http://cohse.semanticweb.org/ontologies/people#pet"/>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Individuals
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://cohse.semanticweb.org/ontologies/people#Fluffy -->

    <owl:NamedIndividual rdf:about="http://cohse.semanticweb.org/ontologies/people#Fluffy">
        <rdf:type rdf:resource="http://cohse.semanticweb.org/ontologies/people#cat"/>
        <rdfs:label>Fuffy</rdfs:label>
        <rdfs:comment></rdfs:comment>
    </owl:NamedIndividual>
    <owl:Axiom>
        <disponte:probability>0.4</disponte:probability>
        <owl:annotatedSource rdf:resource="http://cohse.semanticweb.org/ontologies/people#Fluffy"/>
        <owl:annotatedTarget rdf:resource="http://cohse.semanticweb.org/ontologies/people#cat"/>
        <owl:annotatedProperty rdf:resource="&rdf;type"/>
    </owl:Axiom>
    


    <!-- http://cohse.semanticweb.org/ontologies/people#Kevin -->

    <owl:NamedIndividual rdf:about="http://cohse.semanticweb.org/ontologies/people#Kevin">
        <rdfs:label>Kevin</rdfs:label>
        <rdfs:comment></rdfs:comment>
        <has_animal rdf:resource="http://cohse.semanticweb.org/ontologies/people#Fluffy"/>
        <has_animal rdf:resource="http://cohse.semanticweb.org/ontologies/people#Tom"/>
    </owl:NamedIndividual>
    


    <!-- http://cohse.semanticweb.org/ontologies/people#Tom -->

    <owl:NamedIndividual rdf:about="http://cohse.semanticweb.org/ontologies/people#Tom">
        <rdf:type rdf:resource="http://cohse.semanticweb.org/ontologies/people#cat"/>
        <rdfs:label>Tom</rdfs:label>
        <rdfs:comment></rdfs:comment>
    </owl:NamedIndividual>
    <owl:Axiom>
        <disponte:probability>0.3</disponte:probability>
        <owl:annotatedSource rdf:resource="http://cohse.semanticweb.org/ontologies/people#Tom"/>
        <owl:annotatedTarget rdf:resource="http://cohse.semanticweb.org/ontologies/people#cat"/>
        <owl:annotatedProperty rdf:resource="&rdf;type"/>
    </owl:Axiom>
    

    <!-- http://cohse.semanticweb.org/ontologies/people#Dino -->

    <owl:NamedIndividual rdf:about="http://cohse.semanticweb.org/ontologies/people#Dino">
        <rdf:type rdf:resource="http://cohse.semanticweb.org/ontologies/people#dinosaur"/>
        <rdfs:label>Dino</rdfs:label>
        <rdfs:comment></rdfs:comment>
    </owl:NamedIndividual>
    


    <!-- http://cohse.semanticweb.org/ontologies/people#Fred -->

    <owl:NamedIndividual rdf:about="http://cohse.semanticweb.org/ontologies/people#Fred">
        <rdfs:label>Kevin</rdfs:label>
        <rdfs:comment></rdfs:comment>
        <has_animal rdf:resource="http://cohse.semanticweb.org/ontologies/people#Dino"/>
    </owl:NamedIndividual>
    

    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // General axioms
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    <owl:Axiom>
        <owl:annotatedTarget rdf:resource="http://cohse.semanticweb.org/ontologies/people#natureLover"/>
        <owl:annotatedProperty rdf:resource="&rdfs;subClassOf"/>
        <owl:annotatedSource>
            <owl:Restriction>
                <rdfs:subClassOf rdf:resource="http://cohse.semanticweb.org/ontologies/people#natureLover"/>
                <owl:onProperty rdf:resource="http://cohse.semanticweb.org/ontologies/people#has_animal"/>
                <owl:someValuesFrom rdf:resource="http://cohse.semanticweb.org/ontologies/people#pet"/>
            </owl:Restriction>
        </owl:annotatedSource>
    </owl:Axiom>
</rdf:RDF>').

subClassOf('cat','pet').
subClassOf('dinosaur','pet').
annotationAssertion('disponte:probability',subClassOf('cat','pet'),literal('0.6')).
