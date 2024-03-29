:-use_module(library(trill_inc)).

:- trill.

/*
This knowledge base is an extract of the Vicodi knowledge base that contains information on European history.
http://www.vicodi.org/
*/

/** <examples>

?- prob_instanceOf('vicodi:Role','vicodi:Anthony-van-Dyck-is-Painter-in-Flanders',Prob).
?- instanceOf('vicodi:Role','vicodi:Anthony-van-Dyck-is-Painter-in-Flanders',ListExpl).

?- prob_sub_class('vicodi:Painter','vicodi:Role',Prob).
?- sub_class('vicodi:Painter','vicodi:Role',ListExpl).

*/

owl_rdf('<?xml version="1.0"?>

<!DOCTYPE rdf:RDF [
    <!ENTITY owl "http://www.w3.org/2002/07/owl#" >
    <!ENTITY xsd "http://www.w3.org/2001/XMLSchema#" >
    <!ENTITY rdfs "http://www.w3.org/2000/01/rdf-schema#" >
    <!ENTITY rdf "http://www.w3.org/1999/02/22-rdf-syntax-ns#" >
    <!ENTITY disponte "https://sites.google.com/a/unife.it/ml/disponte#" >
]>


<rdf:RDF xmlns="http://example.org#"
     xml:base="http://example.org"
     xmlns:vicodi="http://vicodi.org/ontology#"
     xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
     xmlns:owl="http://www.w3.org/2002/07/owl#"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
     xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
     xmlns:disponte="https://sites.google.com/a/unife.it/ml/disponte#">
    <owl:Ontology rdf:about="http://example.org"/>
    


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

    


    <!-- http://vicodi.org/ontology#exists -->

    <owl:ObjectProperty rdf:about="http://vicodi.org/ontology#exists">
        <rdfs:range rdf:resource="http://vicodi.org/ontology#Time"/>
        <rdfs:domain rdf:resource="http://vicodi.org/ontology#Time-Dependent"/>
        <rdfs:subPropertyOf rdf:resource="http://vicodi.org/ontology#related"/>
    </owl:ObjectProperty>
    


    <!-- http://vicodi.org/ontology#hasCategory -->

    <owl:ObjectProperty rdf:about="http://vicodi.org/ontology#hasCategory">
        <rdfs:range rdf:resource="http://vicodi.org/ontology#Category"/>
        <rdfs:domain rdf:resource="http://vicodi.org/ontology#Time-Dependent"/>
        <rdfs:subPropertyOf rdf:resource="http://vicodi.org/ontology#related"/>
    </owl:ObjectProperty>
    


    <!-- http://vicodi.org/ontology#hasLocationPart -->

    <owl:ObjectProperty rdf:about="http://vicodi.org/ontology#hasLocationPart">
        <rdfs:domain rdf:resource="http://vicodi.org/ontology#Location"/>
        <rdfs:range rdf:resource="http://vicodi.org/ontology#Location"/>
        <rdfs:subPropertyOf rdf:resource="http://vicodi.org/ontology#related"/>
    </owl:ObjectProperty>
    


    <!-- http://vicodi.org/ontology#hasRole -->

    <owl:ObjectProperty rdf:about="http://vicodi.org/ontology#hasRole">
        <rdfs:domain rdf:resource="http://vicodi.org/ontology#Flavour"/>
        <rdfs:range rdf:resource="http://vicodi.org/ontology#Role"/>
        <rdfs:subPropertyOf rdf:resource="http://vicodi.org/ontology#related"/>
    </owl:ObjectProperty>
    


    <!-- http://vicodi.org/ontology#isLocationPartOf -->

    <owl:ObjectProperty rdf:about="http://vicodi.org/ontology#isLocationPartOf">
        <rdfs:domain rdf:resource="http://vicodi.org/ontology#Location"/>
        <rdfs:range rdf:resource="http://vicodi.org/ontology#Location"/>
        <rdfs:subPropertyOf rdf:resource="http://vicodi.org/ontology#related"/>
    </owl:ObjectProperty>
    


    <!-- http://vicodi.org/ontology#related -->

    <owl:ObjectProperty rdf:about="http://vicodi.org/ontology#related">
        <rdfs:range rdf:resource="http://vicodi.org/ontology#VicodiOI"/>
        <rdfs:domain rdf:resource="http://vicodi.org/ontology#VicodiOI"/>
    </owl:ObjectProperty>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Data properties
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://vicodi.org/ontology#intervalEnd -->

    <owl:DatatypeProperty rdf:about="http://vicodi.org/ontology#intervalEnd">
        <rdfs:domain rdf:resource="http://vicodi.org/ontology#TemporalInterval"/>
        <rdfs:range rdf:resource="&rdfs;Literal"/>
    </owl:DatatypeProperty>
    


    <!-- http://vicodi.org/ontology#intervalStart -->

    <owl:DatatypeProperty rdf:about="http://vicodi.org/ontology#intervalStart">
        <rdfs:domain rdf:resource="http://vicodi.org/ontology#TemporalInterval"/>
        <rdfs:range rdf:resource="&rdfs;Literal"/>
    </owl:DatatypeProperty>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Classes
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://kaon.semanticweb.org/2001/11/kaon-lexical#Root -->

    <owl:Class rdf:about="http://kaon.semanticweb.org/2001/11/kaon-lexical#Root"/>
    


    <!-- http://vicodi.org/ontology#Abbey -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Abbey">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Building"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Abstract-Notion -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Abstract-Notion">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Flavour"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Animal -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Animal">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Natural-Object"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Architect -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Architect">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Creator"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Armament -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Armament">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artefact"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Artefact -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Artefact">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Object"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Artist -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Artist">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Creator"/>
    </owl:Class>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.85</disponte:probability>
        <owl:annotatedSource rdf:resource="http://vicodi.org/ontology#Artist"/>
        <owl:annotatedTarget rdf:resource="http://vicodi.org/ontology#Creator"/>
        <owl:annotatedProperty rdf:resource="&rdfs;subClassOf"/>
    </owl:Axiom>
    


    <!-- http://vicodi.org/ontology#Artistic-Movement -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Artistic-Movement">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Movement"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Artistic-Style -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Artistic-Style">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Abstract-Notion"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Author -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Author">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Creator"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Badge -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Badge">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Conceptual-Object"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Battle -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Battle">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Board -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Board">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Management-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Book -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Book">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Writing"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Building -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Building">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artefact"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Category -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Category">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#VicodiOI"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Cathedral -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Cathedral">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Building"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Church -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Church">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Building"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Church-Reformer -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Church-Reformer">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Religious-Leader"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#City -->

    <owl:Class rdf:about="http://vicodi.org/ontology#City">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Settlement"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Cleric -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Cleric">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Person-Role"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Clerical-Leader -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Clerical-Leader">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Leader"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Clothing -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Clothing">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artefact"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Commodity -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Commodity">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Natural-Object"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Composer -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Composer">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artist"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Conceptual-Object -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Conceptual-Object">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Object"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Country -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Country">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Location"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Creator -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Creator">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Person-Role"/>
    </owl:Class>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.8</disponte:probability>
        <owl:annotatedSource rdf:resource="http://vicodi.org/ontology#Creator"/>
        <owl:annotatedTarget rdf:resource="http://vicodi.org/ontology#Person-Role"/>
        <owl:annotatedProperty rdf:resource="&rdfs;subClassOf"/>
    </owl:Axiom>
    


    <!-- http://vicodi.org/ontology#Crime -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Crime">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Cultural-Agreement -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Cultural-Agreement">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Cultural-Organisation -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Cultural-Organisation">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Diplomat -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Diplomat">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Functionary"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Disaster -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Disaster">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Discoverer -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Discoverer">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Person-Role"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Disease -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Disease">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Natural-Object"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Dynasty -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Dynasty">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Social-Group"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Ecclesiarch -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Ecclesiarch">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Religious-Leader"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Economic-Enterprise -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Economic-Enterprise">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Economic-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Economic-Organisation -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Economic-Organisation">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Economic-Symbol -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Economic-Symbol">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Symbol"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Educational-Organisation -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Educational-Organisation">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Election -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Election">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Emperor -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Emperor">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Head-of-State"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Engineer -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Engineer">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Creator"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Environment -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Environment">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Natural-Object"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Ethnic-Group -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Ethnic-Group">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Social-Group"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Event -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Event">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Flavour"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Fictional-Event -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Fictional-Event">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Fictional-Person -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Fictional-Person">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Individual"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Field-of-Knowledge -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Field-of-Knowledge">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Intellectual-Construct"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Flavour -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Flavour">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Time-Dependent"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Food -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Food">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Natural-Object"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Functionary -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Functionary">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Person-Role"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Geographical-Discovery -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Geographical-Discovery">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Geographical-Feature -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Geographical-Feature">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Location"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Geographical-Region -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Geographical-Region">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Geographical-Feature"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Governmental-Organisation -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Governmental-Organisation">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Political-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Head-of-Government -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Head-of-Government">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Secular-Leader"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Head-of-State -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Head-of-State">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Secular-Leader"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Idea -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Idea">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Abstract-Notion"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Ideology -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Ideology">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Abstract-Notion"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Illness -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Illness">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Life-Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Individual -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Individual">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Flavour"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Intellectual-Construct -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Intellectual-Construct">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Abstract-Notion"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Intellectual-Movement -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Intellectual-Movement">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Movement"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#International-Alliance -->

    <owl:Class rdf:about="http://vicodi.org/ontology#International-Alliance">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Political-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#International-Organisation -->

    <owl:Class rdf:about="http://vicodi.org/ontology#International-Organisation">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Intra-State-Group -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Intra-State-Group">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Location"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Inventor -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Inventor">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Person-Role"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Journal -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Journal">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Writing"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#King -->

    <owl:Class rdf:about="http://vicodi.org/ontology#King">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Head-of-State"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Landmark -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Landmark">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Geographical-Feature"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Language -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Language">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Abstract-Notion"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Leader -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Leader">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Person-Role"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#League -->

    <owl:Class rdf:about="http://vicodi.org/ontology#League">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Political-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Legislation -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Legislation">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Life-Event -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Life-Event">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Liturgical-Object -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Liturgical-Object">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artefact"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Location -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Location">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Flavour"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Magnate -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Magnate">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Secular-Leader"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Management-Organisation -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Management-Organisation">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Masonic-Lodge -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Masonic-Lodge">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Cultural-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Measurable-Trend -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Measurable-Trend">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Abstract-Notion"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Meeting -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Meeting">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Military-Organisation -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Military-Organisation">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Military-Person -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Military-Person">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Person-Role"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Military-Unit -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Military-Unit">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Military-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Minister -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Minister">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Functionary"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Monastery -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Monastery">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Building"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Movement -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Movement">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Social-Group"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#National-Symbol -->

    <owl:Class rdf:about="http://vicodi.org/ontology#National-Symbol">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Symbol"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Natural-Object -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Natural-Object">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Object"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Newspaper -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Newspaper">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Writing"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Non-Military-Conflict -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Non-Military-Conflict">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Object -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Object">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Flavour"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Organisation -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Organisation">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Flavour"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Other-Religious-Leader -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Other-Religious-Leader">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Religious-Leader"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Other-Religious-Person -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Other-Religious-Person">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Person-Role"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Painter -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Painter">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artist"/>
    </owl:Class>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.5</disponte:probability>
        <owl:annotatedTarget rdf:resource="http://vicodi.org/ontology#Artist"/>
        <owl:annotatedSource rdf:resource="http://vicodi.org/ontology#Painter"/>
        <owl:annotatedProperty rdf:resource="&rdfs;subClassOf"/>
    </owl:Axiom>
    


    <!-- http://vicodi.org/ontology#Painting -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Painting">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Work-of-Art"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Pamphlet -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Pamphlet">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Writing"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Party -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Party">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Political-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Pastime -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Pastime">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Conceptual-Object"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Period -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Period">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Period-in-Office -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Period-in-Office">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Person -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Person">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Individual"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Person-Role -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Person-Role">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Role"/>
    </owl:Class>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.9</disponte:probability>
        <owl:annotatedSource rdf:resource="http://vicodi.org/ontology#Person-Role"/>
        <owl:annotatedTarget rdf:resource="http://vicodi.org/ontology#Role"/>
        <owl:annotatedProperty rdf:resource="&rdfs;subClassOf"/>
    </owl:Axiom>
    


    <!-- http://vicodi.org/ontology#Philanthropist -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Philanthropist">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Person-Role"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Philosopher -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Philosopher">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Scientist"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Piece-of-Music -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Piece-of-Music">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Work-of-Art"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Political-Organisation -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Political-Organisation">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Political-Region -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Political-Region">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Location"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Political-Symbol -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Political-Symbol">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Symbol"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Politician -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Politician">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Functionary"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Pollution -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Pollution">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artefact"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Pope -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Pope">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Religious-Leader"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Population-Movement -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Population-Movement">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Prince -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Prince">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Head-of-State"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Public-Oration -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Public-Oration">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Publisher -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Publisher">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Creator"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Queen -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Queen">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Head-of-State"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Relic -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Relic">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artefact"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Religious-Community -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Religious-Community">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Religious-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Religious-Ideology -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Religious-Ideology">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Ideology"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Religious-Leader -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Religious-Leader">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Leader"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Religious-Movement -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Religious-Movement">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Movement"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Religious-Order -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Religious-Order">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Religious-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Religious-Organisation -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Religious-Organisation">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Cultural-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Religious-Practice -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Religious-Practice">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Conceptual-Object"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Religious-Symbol -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Religious-Symbol">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Symbol"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Representative-Institution -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Representative-Institution">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Political-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Ritual -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Ritual">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Conceptual-Object"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Role -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Role">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Time-Dependent"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Saint -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Saint">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Person-Role"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Scandal -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Scandal">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Scientific-Instrument -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Scientific-Instrument">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artefact"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Scientist -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Scientist">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Person-Role"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Sculptor -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Sculptor">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artist"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Sculpture -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Sculpture">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Work-of-Art"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Secular-Ideology -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Secular-Ideology">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Ideology"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Secular-Leader -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Secular-Leader">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Leader"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Secular-Movement -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Secular-Movement">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Movement"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Settlement -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Settlement">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Location"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Ship -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Ship">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Vehicle"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Social-Group -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Social-Group">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Flavour"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Social-Stratum -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Social-Stratum">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Social-Group"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Stereotype-Group -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Stereotype-Group">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Social-Group"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Structure -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Structure">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artefact"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Sultan -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Sultan">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Head-of-State"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Symbol -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Symbol">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Role"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Technical-Scientific-Advance -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Technical-Scientific-Advance">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#TemporalInterval -->

    <owl:Class rdf:about="http://vicodi.org/ontology#TemporalInterval">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Time"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Time -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Time">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#VicodiOI"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Time-Dependent -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Time-Dependent">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#VicodiOI"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Trade-Association -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Trade-Association">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Economic-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Trades-Union -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Trades-Union">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Economic-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Train -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Train">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Vehicle"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Treaty -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Treaty">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#University -->

    <owl:Class rdf:about="http://vicodi.org/ontology#University">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Educational-Organisation"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Uprising -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Uprising">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Vehicle -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Vehicle">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artefact"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#VicodiOI -->

    <owl:Class rdf:about="http://vicodi.org/ontology#VicodiOI">
        <rdfs:subClassOf rdf:resource="http://kaon.semanticweb.org/2001/11/kaon-lexical#Root"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Village -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Village">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Settlement"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#War -->

    <owl:Class rdf:about="http://vicodi.org/ontology#War">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Water -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Water">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Geographical-Feature"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Work-of-Art -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Work-of-Art">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artefact"/>
    </owl:Class>
    


    <!-- http://vicodi.org/ontology#Writing -->

    <owl:Class rdf:about="http://vicodi.org/ontology#Writing">
        <rdfs:subClassOf rdf:resource="http://vicodi.org/ontology#Artefact"/>
    </owl:Class>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Individuals
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://vicodi.org/ontology#Anthony-van-Dyck -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#Anthony-van-Dyck">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Person"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#Anthony-van-Dyck-is-Painter-in-Flanders -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#Anthony-van-Dyck-is-Painter-in-Flanders">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Painter"/>
    </owl:NamedIndividual>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.9</disponte:probability>
        <owl:annotatedSource rdf:resource="http://vicodi.org/ontology#Anthony-van-Dyck-is-Painter-in-Flanders"/>
        <owl:annotatedTarget rdf:resource="http://vicodi.org/ontology#Painter"/>
        <owl:annotatedProperty rdf:resource="&rdf;type"/>
    </owl:Axiom>
    


    <!-- http://vicodi.org/ontology#%C3%81rp%C3%A1d-Dynasty -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#%C3%81rp%C3%A1d-Dynasty">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Dynasty"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#%C3%81rp%C3%A1d-Goncz -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#%C3%81rp%C3%A1d-Goncz">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Person"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#%C3%81rp%C3%A1d-Goncz-is-Head-of-Government-in-Hungary-between-1990-2000 -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#%C3%81rp%C3%A1d-Goncz-is-Head-of-Government-in-Hungary-between-1990-2000">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Head-of-Government"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#%C3%81rp%C3%A1d-Szakasits -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#%C3%81rp%C3%A1d-Szakasits">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Person"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#%C3%81rp%C3%A1d-Szakasits-is-Head-of-Government-in-Hungary-between-1948-1950 -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#%C3%81rp%C3%A1d-Szakasits-is-Head-of-Government-in-Hungary-between-1948-1950">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Head-of-Government"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#%C3%81rp%C3%A1d-of-Hungary -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#%C3%81rp%C3%A1d-of-Hungary">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Person"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#%C3%81rp%C3%A1d-of-Hungary-is-Prince-in-Hungary-between-896-907 -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#%C3%81rp%C3%A1d-of-Hungary-is-Prince-in-Hungary-between-896-907">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Prince"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#%C3%86thelwulf-King-of-Wessex -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#%C3%86thelwulf-King-of-Wessex">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Person"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#%C3%89douard-Drumont -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#%C3%89douard-Drumont">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Person"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#%C3%89douard-Herriot -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#%C3%89douard-Herriot">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Person"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#%C3%89douard-Valliant -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#%C3%89douard-Valliant">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Person"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#%C3%89mile-Vandervelde -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#%C3%89mile-Vandervelde">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Person"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#1st-Abdication-of-Napoleon -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#1st-Abdication-of-Napoleon">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Event"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#1st-Battle-of-Poitiers -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#1st-Battle-of-Poitiers">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Battle"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#1st-Battle-of-St-Albans -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#1st-Battle-of-St-Albans">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Battle"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#12-year-truce -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#12-year-truce">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Non-Military-Conflict"/>
    </owl:NamedIndividual>
    


    <!-- http://vicodi.org/ontology#20-year-building-programme-for-German-high-seas-fleet -->

    <owl:NamedIndividual rdf:about="http://vicodi.org/ontology#20-year-building-programme-for-German-high-seas-fleet">
        <rdf:type rdf:resource="http://vicodi.org/ontology#Legislation"/>
    </owl:NamedIndividual>
</rdf:RDF>



<!-- Generated by the OWL API (version 3.5.0) http://owlapi.sourceforge.net -->
').
