:-use_module(library(trill_inc)).

:- trill.

/*
Model of metabolic pathways.
http://www.biopax.org/
*/

/** <examples>

?- prob_sub_class('TransportWithBiochemicalReaction','Entity',Prob).
?- sub_class('TransportWithBiochemicalReaction','Entity',ListExpl).

*/

owl_rdf('<?xml version="1.0"?>

<!DOCTYPE rdf:RDF [
    <!ENTITY owl "http://www.w3.org/2002/07/owl#" >
    <!ENTITY swrl "http://www.w3.org/2003/11/swrl#" >
    <!ENTITY swrlb "http://www.w3.org/2003/11/swrlb#" >
    <!ENTITY xsd "http://www.w3.org/2001/XMLSchema#" >
    <!ENTITY rdfs "http://www.w3.org/2000/01/rdf-schema#" >
    <!ENTITY rdf "http://www.w3.org/1999/02/22-rdf-syntax-ns#" >
    <!ENTITY protege "http://protege.stanford.edu/plugins/owl/protege#" >
    <!ENTITY disponte "https://sites.google.com/a/unife.it/ml/disponte#" >
    <!ENTITY xsp "http://www.owl-ontologies.com/2005/08/07/xsp.owl#" >
]>


<rdf:RDF xmlns="http://www.biopax.org/release/biopax-level3.owl#"
     xml:base="http://www.biopax.org/release/biopax-level3.owl"
     xmlns:biopax="http://www.biopax.org/release/biopax-level3.owl#"
     xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
     xmlns:swrl="http://www.w3.org/2003/11/swrl#"
     xmlns:protege="http://protege.stanford.edu/plugins/owl/protege#"
     xmlns:xsp="http://www.owl-ontologies.com/2005/08/07/xsp.owl#"
     xmlns:owl="http://www.w3.org/2002/07/owl#"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
     xmlns:swrlb="http://www.w3.org/2003/11/swrlb#"
     xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
     xmlns:disponte="https://sites.google.com/a/unife.it/ml/disponte#">
    <owl:Ontology rdf:about="http://www.biopax.org/release/biopax-level3.owl">
        <rdfs:comment rdf:datatype="&xsd;string">This is version 1.0 of the BioPAX Level 3 ontology.  The goal of the BioPAX group is to develop a common exchange format for biological pathway data.  More information is available at http://www.biopax.org.  This ontology is freely available under the LGPL (http://www.gnu.org/copyleft/lesser.html).</rdfs:comment>
    </owl:Ontology>
    


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

    


    <!-- http://www.biopax.org/release/biopax-level3.owl#absoluteRegion -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#absoluteRegion">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">Absolute location as defined by the referenced sequence database record. E.g. an operon has a absolute region on the DNA molecule referenced by the UnificationXref.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaRegionReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#bindsTo -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#bindsTo">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdf:type rdf:resource="&owl;InverseFunctionalProperty"/>
        <rdf:type rdf:resource="&owl;SymmetricProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">A binding feature represents a &quot;half&quot; of the bond between two entities. This property points to another binding feature which represents the other half. The bond can be covalent or non-covalent.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BindingFeature"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BindingFeature"/>
        <owl:inverseOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#bindsTo"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#cellType -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#cellType">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">A cell type, e.g. &apos;HeLa&apos;. This should reference a term in a controlled vocabulary of cell types. Best practice is to refer to OBO Cell Ontology. http://www.obofoundry.org/cgi-bin/detail.cgi?id=cell</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BioSource"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#CellVocabulary"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#cellularLocation -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#cellularLocation">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">A cellular location, e.g. &apos;cytoplasm&apos;. This should reference a term in the Gene Ontology Cellular Component ontology. The location referred to by this property should be as specific as is known. If an interaction is known to occur in multiple locations, separate interactions (and physicalEntities) must be created for each different location.  If the location of a participant in a complex is unspecified, it may be assumed to be the same location as that of the complex. 

 A molecule in two different cellular locations are considered two different physical entities.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#CellularLocationVocabulary"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#cofactor -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#cofactor">
        <rdfs:comment xml:lang="en">Any cofactor(s) or coenzyme(s) required for catalysis of the conversion by the enzyme. COFACTOR is a sub-property of PARTICIPANTS.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Catalysis"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:subPropertyOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#component -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#component">
        <rdf:type rdf:resource="&owl;InverseFunctionalProperty"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Complex"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#componentStoichiometry -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#componentStoichiometry">
        <rdfs:comment rdf:datatype="&xsd;string">The stoichiometry of components in a complex</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Complex"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#confidence -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#confidence">
        <rdfs:comment rdf:datatype="&xsd;string">Confidence in the containing instance.  Usually a statistical measure.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Evidence"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#controlled -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#controlled">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">The entity that is controlled, e.g., in a biochemical reaction, the reaction is controlled by an enzyme. CONTROLLED is a sub-property of PARTICIPANTS.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Control"/>
        <rdfs:subPropertyOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
        <rdfs:range>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Pathway"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:range>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#controller -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#controller">
        <rdfs:comment xml:lang="en">The controlling entity, e.g., in a biochemical reaction, an enzyme is the controlling entity of the reaction. CONTROLLER is a sub-property of PARTICIPANTS.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Control"/>
        <rdfs:subPropertyOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
        <rdfs:range>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Pathway"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:range>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#dataSource -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#dataSource">
        <rdfs:comment rdf:datatype="&xsd;string">A free text description of the source of this data, e.g. a database or person name. This property should be used to describe the source of the data. This is meant to be used by databases that export their data to the BioPAX format or by systems that are integrating data from multiple sources. The granularity of use (specifying the data source in many or few instances) is up to the user. It is intended that this property report the last data source, not all data sources that the data has passed through from creation.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Entity"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#deltaG -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#deltaG">
        <rdfs:comment rdf:datatype="&xsd;string">For biochemical reactions, this property refers to the standard transformed Gibbs energy change for a reaction written in terms of biochemical reactants (sums of species), delta-G

Since Delta-G can change based on multiple factors including ionic strength and temperature a reaction can have multiple DeltaG values.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BiochemicalReaction"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DeltaG"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#entityFeature -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#entityFeature">
        <rdf:type rdf:resource="&owl;InverseFunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">Variable features that are observed for this entity - such as known PTM or methylation sites and non-covalent bonds.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#entityReference -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#entityReference">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">Reference entity for this physical entity.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Dna"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaRegion"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Protein"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Rna"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaRegion"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#SmallMolecule"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#entityReferenceType -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#entityReferenceType">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">A controlled vocabulary term that is used to describe the type of grouping such as homology or functional group.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReferenceTypeVocabulary"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#evidence -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#evidence">
        <rdfs:comment rdf:datatype="&xsd;string">Scientific evidence supporting the existence of the entity as described.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Evidence"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Entity"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#evidenceCode -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#evidenceCode">
        <rdfs:comment rdf:datatype="&xsd;string">A pointer to a term in an external controlled vocabulary, such as the GO, PSI-MI or BioCyc evidence codes, that describes the nature of the support, such as &apos;traceable author statement&apos; or &apos;yeast two-hybrid&apos;.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Evidence"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EvidenceCodeVocabulary"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#experimentalFeature -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#experimentalFeature">
        <rdfs:comment rdf:datatype="&xsd;string">A feature of the experimental form of the participant of the interaction, such as a protein tag. It is not expected to occur in vivo or be necessary for the interaction.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#experimentalForm -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#experimentalForm">
        <rdfs:comment rdf:datatype="&xsd;string">The experimental forms associated with an evidence instance.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Evidence"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#experimentalFormDescription -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#experimentalFormDescription">
        <rdfs:comment rdf:datatype="&xsd;string">Descriptor of this experimental form from a controlled vocabulary.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalFormVocabulary"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#experimentalFormEntity -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#experimentalFormEntity">
        <rdfs:comment rdf:datatype="&xsd;string">The gene or physical entity that this experimental form describes.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm"/>
        <rdfs:range>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Gene"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:range>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#feature -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#feature">
        <rdfs:comment rdf:datatype="&xsd;string">Sequence features of the owner physical entity.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#featureLocation -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#featureLocation">
        <rdfs:comment rdf:datatype="&xsd;string">Location of the feature on the sequence of the interactor. One feature may have more than one location, used e.g. for features which involve sequence positions close in the folded, three-dimensional state of a protein, but non-continuous along the sequence.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#featureLocationType -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#featureLocationType">
        <rdfs:comment rdf:datatype="&xsd;string">A controlled vocabulary term describing the type of the sequence location such as C-Terminal or SH2 Domain.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#interactionScore -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#interactionScore">
        <rdfs:comment rdf:datatype="&xsd;string">The score of an interaction e.g. a genetic interaction score.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#GeneticInteraction"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#interactionType -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#interactionType">
        <rdfs:comment rdf:datatype="&xsd;string">External controlled vocabulary annotating the interaction type, for example &quot;phosphorylation&quot;. This is annotation useful for e.g. display on a web page or database searching, but may not be suitable for other computing tasks, like reasoning.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#InteractionVocabulary"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#kEQ -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#kEQ">
        <rdfs:comment rdf:datatype="&xsd;string">This quantity is dimensionless and is usually a single number. The measured equilibrium constant for a biochemical reaction, encoded by the slot KEQ, is actually the apparent equilibrium constant, K&apos;.  Concentrations in the equilibrium constant equation refer to the total concentrations of  all forms of particular biochemical reactants. For example, in the equilibrium constant equation for the biochemical reaction in which ATP is hydrolyzed to ADP and inorganic phosphate:

K&apos; = [ADP][P&lt;sub&gt;i&lt;/sub&gt;]/[ATP],

The concentration of ATP refers to the total concentration of all of the following species:

[ATP] = [ATP&lt;sup&gt;4-&lt;/sup&gt;] + [HATP&lt;sup&gt;3-&lt;/sup&gt;] + [H&lt;sub&gt;2&lt;/sub&gt;ATP&lt;sup&gt;2-&lt;/sup&gt;] + [MgATP&lt;sup&gt;2-&lt;/sup&gt;] + [MgHATP&lt;sup&gt;-&lt;/sup&gt;] + [Mg&lt;sub&gt;2&lt;/sub&gt;ATP].

The apparent equilibrium constant is formally dimensionless, and can be kept so by inclusion of as many of the terms (1 mol/dm&lt;sup&gt;3&lt;/sup&gt;) in the numerator or denominator as necessary.  It is a function of temperature (T), ionic strength (I), pH, and pMg (pMg = -log&lt;sub&gt;10&lt;/sub&gt;[Mg&lt;sup&gt;2+&lt;/sup&gt;]). Therefore, these quantities must be specified to be precise, and values for KEQ for biochemical reactions may be represented as 5-tuples of the form (K&apos; T I pH pMg).  This property may have multiple values, representing different measurements for K&apos; obtained under the different experimental conditions listed in the 5-tuple. (This definition adapted from EcoCyc)</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BiochemicalReaction"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#left -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#left">
        <rdfs:comment rdf:datatype="&xsd;string">The participants on the left side of the conversion interaction. Since conversion interactions may proceed in either the left-to-right or right-to-left direction, occupants of the LEFT property may be either reactants or products. LEFT is a sub-property of PARTICIPANTS.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Conversion"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:subPropertyOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#memberEntityReference -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#memberEntityReference">
        <rdfs:comment rdf:datatype="&xsd;string">An entity reference that qualifies for the definition of this group. For example a member of a PFAM protein family.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#memberFeature -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#memberFeature">
        <rdf:type rdf:resource="&owl;TransitiveProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">An entity feature  that belongs to this homology grouping. Example: a homologous phosphorylation site across a protein family.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#memberPhysicalEntity -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#memberPhysicalEntity">
        <rdf:type rdf:resource="&owl;TransitiveProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">This property stores the members of a generic physical entity. 

For representing homology generics a better way is to use generic entity references and generic features. However not all generic logic can be captured by this, such as complex generics or rare cases where feature cardinality is variable. Usages of this property should be limited to such cases.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#modificationType -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#modificationType">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">Description and classification of the feature.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ModificationFeature"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceModificationVocabulary"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#nextStep -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#nextStep">
        <rdfs:comment rdf:datatype="&xsd;string">The next step(s) of the pathway.  Contains zero or more pathwayStep instances.  If there is no next step, this property is empty. Multiple pathwayStep instances indicate pathway branching.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#notFeature -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#notFeature">
        <rdfs:comment rdf:datatype="&xsd;string">Sequence features where the owner physical entity has a feature. If not specified, other potential features are not known.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#organism -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#organism">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">An organism, e.g. &apos;Homo sapiens&apos;. This is the organism that the entity is found in. Pathways may not have an organism associated with them, for instance, reference pathways from KEGG. Sequence-based entities (DNA, protein, RNA) may contain an xref to a sequence database that contains organism information, in which case the information should be consistent with the value for ORGANISM.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BioSource"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaRegionReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Gene"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Pathway"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#ProteinReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#participant -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#participant">
        <rdfs:comment rdf:datatype="&xsd;string">This property lists the entities that participate in this interaction. For example, in a biochemical reaction, the participants are the union of the reactants and the products of the reaction. This property has a number of sub-properties, such as LEFT and RIGHT used in the biochemicalInteraction class. Any participant listed in a sub-property will automatically be assumed to also be in PARTICIPANTS by a number of software systems, including Protege, so this property should not contain any instances if there are instances contained in a sub-property.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Entity"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#participantStoichiometry -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#participantStoichiometry">
        <rdfs:comment rdf:datatype="&xsd;string">Stoichiometry of the left and right participants.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Conversion"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#pathwayComponent -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#pathwayComponent">
        <rdfs:comment rdf:datatype="&xsd;string">The set of interactions and/or pathwaySteps in this pathway/network. Each instance of the pathwayStep class defines: 1) a set of interactions that together define a particular step in the pathway, for example a catalysis instance and the conversion that it catalyzes; 2) an order relationship to one or more other pathway steps (via the NEXT-STEP property). Note: This ordering is not necessarily temporal - the order described may simply represent connectivity between adjacent steps. Temporal ordering information should only be inferred from the direction of each interaction.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Pathway"/>
        <rdfs:range>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Pathway"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:range>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#pathwayOrder -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#pathwayOrder">
        <rdfs:comment rdf:datatype="&xsd;string">The ordering of components (interactions and pathways) in the context of this pathway. This is useful to specific circular or branched pathways or orderings when component biochemical reactions are normally reversible, but are directed in the context of this pathway.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Pathway"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#phenotype -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#phenotype">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The phenotype quality used to define this genetic interaction e.g. viability.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#GeneticInteraction"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhenotypeVocabulary"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#physicalEntity -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#physicalEntity">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">The physical entity to be annotated with stoichiometry.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#product -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#product">
        <rdfs:comment rdf:datatype="&xsd;string">The product of a template reaction.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TemplateReaction"/>
        <rdfs:subPropertyOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
        <rdfs:range>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Dna"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Protein"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Rna"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:range>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#regionType -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#regionType">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaRegionReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#relationshipType -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#relationshipType">
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RelationshipTypeVocabulary"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RelationshipXref"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#right -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#right">
        <rdfs:comment rdf:datatype="&xsd;string">The participants on the right side of the conversion interaction. Since conversion interactions may proceed in either the left-to-right or right-to-left direction, occupants of the RIGHT property may be either reactants or products. RIGHT is a sub-property of PARTICIPANTS.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Conversion"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:subPropertyOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#scoreSource -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#scoreSource">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#sequenceIntervalBegin -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#sequenceIntervalBegin">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The begin position of a sequence interval.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceInterval"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceSite"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#sequenceIntervalEnd -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#sequenceIntervalEnd">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The end position of a sequence interval.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceInterval"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceSite"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#stepConversion -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#stepConversion">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The central process that take place at this step of the biochemical pathway.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BiochemicalPathwayStep"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Conversion"/>
        <rdfs:subPropertyOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#stepProcess"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#stepProcess -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#stepProcess">
        <rdfs:comment rdf:datatype="&xsd;string">An interaction or a pathway that are a part of this pathway step.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
        <rdfs:range>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Pathway"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:range>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#structure -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#structure">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">Defines the chemical structure and other information about this molecule, using an instance of class chemicalStructure.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ChemicalStructure"/>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMoleculeReference"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#subRegion -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#subRegion">
        <rdfs:comment rdf:datatype="&xsd;string">The sub region of a region or nucleic acid molecule. The sub region must be wholly part of the region, not outside of it.</rdfs:comment>
        <rdfs:range>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaRegionReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:range>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaRegionReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#template -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#template">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The template molecule that is used in this template reaction.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TemplateReaction"/>
        <rdfs:subPropertyOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
        <rdfs:range>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Dna"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaRegion"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Rna"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaRegion"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:range>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#tissue -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#tissue">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">An external controlled vocabulary of tissue types.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BioSource"/>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary"/>
    </owl:ObjectProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#xref -->

    <owl:ObjectProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#xref">
        <rdfs:comment xml:lang="en">Values of this property define external cross-references from this entity to entities in external databases.</rdfs:comment>
        <rdfs:range rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#BioSource"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Entity"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Evidence"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:ObjectProperty>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Data properties
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://www.biopax.org/release/biopax-level3.owl#author -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#author">
        <rdfs:comment xml:lang="en">The authors of this publication, one per property value.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PublicationXref"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#availability -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#availability">
        <rdfs:comment xml:lang="en">Describes the availability of this data (e.g. a copyright statement).</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Entity"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#catalysisDirection -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#catalysisDirection">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">This property represents the direction of this catalysis under all
physiological conditions if there is one.

Note that chemically a catalyst will increase the rate of the reaction
in both directions. In biology, however, there are cases where the
enzyme is expressed only when the controlled bidirectional conversion is
on one side of the chemical equilibrium [todo : example]. If that is the
case and the controller, under biological conditions, is always
catalyzing the conversion in one direction then this fact can be
captured using this property. If the enzyme is active for both
directions, or the conversion is not bidirectional, this property should
be left empty.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Catalysis"/>
        <rdfs:range>
            <rdfs:Datatype>
                <owl:oneOf>
                    <rdf:Description>
                        <rdf:type rdf:resource="&rdf;List"/>
                        <rdf:first rdf:datatype="&xsd;string">LEFT-TO-RIGHT</rdf:first>
                        <rdf:rest>
                            <rdf:Description>
                                <rdf:type rdf:resource="&rdf;List"/>
                                <rdf:first rdf:datatype="&xsd;string">RIGHT-TO-LEFT</rdf:first>
                                <rdf:rest rdf:resource="&rdf;nil"/>
                            </rdf:Description>
                        </rdf:rest>
                    </rdf:Description>
                </owl:oneOf>
            </rdfs:Datatype>
        </rdfs:range>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#chemicalFormula -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#chemicalFormula">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The chemical formula of the small molecule. Note: chemical formula can also be stored in the STRUCTURE property (in CML). In case of disagreement between the value of this property and that in the CML file, the CML value takes precedence.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMoleculeReference"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#comment -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#comment">
        <rdfs:comment rdf:datatype="&xsd;string">Comment on the data in the container class. This property should be used instead of the OWL documentation elements (rdfs:comment) for instances because information in &apos;comment&apos; is data to be exchanged, whereas the rdfs:comment field is used for metadata about the structure of the BioPAX ontology.</rdfs:comment>
        <rdfs:range rdf:resource="&xsd;string"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Entity"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#controlType -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#controlType">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">Defines the nature of the control relationship between the CONTROLLER and the CONTROLLED entities.

The following terms are possible values:

ACTIVATION: General activation. Compounds that activate the specified enzyme activity by an unknown mechanism. The mechanism is defined as unknown, because either the mechanism has yet to be elucidated in the experimental literature, or the paper(s) curated thus far do not define the mechanism, and a full literature search has yet to be performed.

The following term can not be used in the catalysis class:
INHIBITION: General inhibition. Compounds that inhibit the specified enzyme activity by an unknown mechanism. The mechanism is defined as unknown, because either the mechanism has yet to be elucidated in the experimental literature, or the paper(s) curated thus far do not define the mechanism, and a full literature search has yet to be performed.

The following terms can only be used in the modulation class (these definitions from EcoCyc):
INHIBITION-ALLOSTERIC
Allosteric inhibitors decrease the specified enzyme activity by binding reversibly to the enzyme and inducing a conformational change that decreases the affinity of the enzyme to its substrates without affecting its VMAX. Allosteric inhibitors can be competitive or noncompetitive inhibitors, therefore, those inhibition categories can be used in conjunction with this category.

INHIBITION-COMPETITIVE
Competitive inhibitors are compounds that competitively inhibit the specified enzyme activity by binding reversibly to the enzyme and preventing the substrate from binding. Binding of the inhibitor and substrate are mutually exclusive because it is assumed that the inhibitor and substrate can both bind only to the free enzyme. A competitive inhibitor can either bind to the active site of the enzyme, directly excluding the substrate from binding there, or it can bind to another site on the enzyme, altering the conformation of the enzyme such that the substrate can not bind to the active site.

INHIBITION-IRREVERSIBLE
Irreversible inhibitors are compounds that irreversibly inhibit the specified enzyme activity by binding to the enzyme and dissociating so slowly that it is considered irreversible. For example, alkylating agents, such as iodoacetamide, irreversibly inhibit the catalytic activity of some enzymes by modifying cysteine side chains.

INHIBITION-NONCOMPETITIVE
Noncompetitive inhibitors are compounds that noncompetitively inhibit the specified enzyme by binding reversibly to both the free enzyme and to the enzyme-substrate complex. The inhibitor and substrate may be bound to the enzyme simultaneously and do not exclude each other. However, only the enzyme-substrate complex (not the enzyme-substrate-inhibitor complex) is catalytically active.

INHIBITION-OTHER
Compounds that inhibit the specified enzyme activity by a mechanism that has been characterized, but that cannot be clearly classified as irreversible, competitive, noncompetitive, uncompetitive, or allosteric.

INHIBITION-UNCOMPETITIVE
Uncompetitive inhibitors are compounds that uncompetitively inhibit the specified enzyme activity by binding reversibly to the enzyme-substrate complex but not to the enzyme alone.

ACTIVATION-NONALLOSTERIC
Nonallosteric activators increase the specified enzyme activity by means other than allosteric.

ACTIVATION-ALLOSTERIC
Allosteric activators increase the specified enzyme activity by binding reversibly to the enzyme and inducing a conformational change that increases the affinity of the enzyme to its substrates without affecting its VMAX.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Control"/>
        <rdfs:range>
            <rdfs:Datatype>
                <owl:oneOf>
                    <rdf:Description>
                        <rdf:type rdf:resource="&rdf;List"/>
                        <rdf:first rdf:datatype="&xsd;string">ACTIVATION</rdf:first>
                        <rdf:rest>
                            <rdf:Description>
                                <rdf:type rdf:resource="&rdf;List"/>
                                <rdf:first rdf:datatype="&xsd;string">ACTIVATION-ALLOSTERIC</rdf:first>
                                <rdf:rest>
                                    <rdf:Description>
                                        <rdf:type rdf:resource="&rdf;List"/>
                                        <rdf:first rdf:datatype="&xsd;string">ACTIVATION-NONALLOSTERIC</rdf:first>
                                        <rdf:rest>
                                            <rdf:Description>
                                                <rdf:type rdf:resource="&rdf;List"/>
                                                <rdf:first rdf:datatype="&xsd;string">INHIBITION</rdf:first>
                                                <rdf:rest>
                                                    <rdf:Description>
                                                        <rdf:type rdf:resource="&rdf;List"/>
                                                        <rdf:first rdf:datatype="&xsd;string">INHIBITION-ALLOSTERIC</rdf:first>
                                                        <rdf:rest>
                                                            <rdf:Description>
                                                                <rdf:type rdf:resource="&rdf;List"/>
                                                                <rdf:first rdf:datatype="&xsd;string">INHIBITION-COMPETITIVE</rdf:first>
                                                                <rdf:rest>
                                                                    <rdf:Description>
                                                                        <rdf:type rdf:resource="&rdf;List"/>
                                                                        <rdf:first rdf:datatype="&xsd;string">INHIBITION-IRREVERSIBLE</rdf:first>
                                                                        <rdf:rest>
                                                                            <rdf:Description>
                                                                                <rdf:type rdf:resource="&rdf;List"/>
                                                                                <rdf:first rdf:datatype="&xsd;string">INHIBITION-NONCOMPETITIVE</rdf:first>
                                                                                <rdf:rest>
                                                                                    <rdf:Description>
                                                                                        <rdf:type rdf:resource="&rdf;List"/>
                                                                                        <rdf:first rdf:datatype="&xsd;string">INHIBITION-OTHER</rdf:first>
                                                                                        <rdf:rest>
                                                                                            <rdf:Description>
                                                                                                <rdf:type rdf:resource="&rdf;List"/>
                                                                                                <rdf:first rdf:datatype="&xsd;string">INHIBITION-UNCOMPETITIVE</rdf:first>
                                                                                                <rdf:rest rdf:resource="&rdf;nil"/>
                                                                                            </rdf:Description>
                                                                                        </rdf:rest>
                                                                                    </rdf:Description>
                                                                                </rdf:rest>
                                                                            </rdf:Description>
                                                                        </rdf:rest>
                                                                    </rdf:Description>
                                                                </rdf:rest>
                                                            </rdf:Description>
                                                        </rdf:rest>
                                                    </rdf:Description>
                                                </rdf:rest>
                                            </rdf:Description>
                                        </rdf:rest>
                                    </rdf:Description>
                                </rdf:rest>
                            </rdf:Description>
                        </rdf:rest>
                    </rdf:Description>
                </owl:oneOf>
            </rdfs:Datatype>
        </rdfs:range>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#conversionDirection -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#conversionDirection">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">This property represents the direction of the reaction. If a reaction is fundamentally irreversible, then it will run in a single direction under all contexts. Otherwise it is reversible.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Conversion"/>
        <rdfs:range>
            <rdfs:Datatype>
                <owl:oneOf>
                    <rdf:Description>
                        <rdf:type rdf:resource="&rdf;List"/>
                        <rdf:first rdf:datatype="&xsd;string">LEFT-TO-RIGHT</rdf:first>
                        <rdf:rest>
                            <rdf:Description>
                                <rdf:type rdf:resource="&rdf;List"/>
                                <rdf:first rdf:datatype="&xsd;string">REVERSIBLE</rdf:first>
                                <rdf:rest>
                                    <rdf:Description>
                                        <rdf:type rdf:resource="&rdf;List"/>
                                        <rdf:first rdf:datatype="&xsd;string">RIGHT-TO-LEFT</rdf:first>
                                        <rdf:rest rdf:resource="&rdf;nil"/>
                                    </rdf:Description>
                                </rdf:rest>
                            </rdf:Description>
                        </rdf:rest>
                    </rdf:Description>
                </owl:oneOf>
            </rdfs:Datatype>
        </rdfs:range>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#db -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#db">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">The name of the external database to which this xref refers.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#dbVersion -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#dbVersion">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">The version of the external database in which this xref was last known to be valid. Resources may have recommendations for referencing dataset versions. For instance, the Gene Ontology recommends listing the date the GO terms were downloaded.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#deltaGPrime0 -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#deltaGPrime0">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">For biochemical reactions, this property refers to the standard transformed Gibbs energy change for a reaction written in terms of biochemical reactants (sums of species), delta-G&apos;&lt;sup&gt;o&lt;/sup&gt;.

  delta-G&apos;&lt;sup&gt;o&lt;/sup&gt; = -RT lnK&apos;
and
  delta-G&apos;&lt;sup&gt;o&lt;/sup&gt; = delta-H&apos;&lt;sup&gt;o&lt;/sup&gt; - T delta-S&apos;&lt;sup&gt;o&lt;/sup&gt;

delta-G&apos;&lt;sup&gt;o&lt;/sup&gt; has units of kJ/mol.  Like K&apos;, it is a function of temperature (T), ionic strength (I), pH, and pMg (pMg = -log&lt;sub&gt;10&lt;/sub&gt;[Mg&lt;sup&gt;2+&lt;/sup&gt;]). Therefore, these quantities must be specified, and values for DELTA-G for biochemical reactions are represented as 5-tuples of the form (delta-G&apos;&lt;sup&gt;o&lt;/sup&gt; T I pH pMg).

(This definition from EcoCyc)</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DeltaG"/>
        <rdfs:range rdf:resource="&xsd;float"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#deltaH -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#deltaH">
        <rdfs:comment rdf:datatype="&xsd;string">For biochemical reactions, this property refers to the standard transformed enthalpy change for a reaction written in terms of biochemical reactants (sums of species), delta-H&apos;&lt;sup&gt;o&lt;/sup&gt;.

  delta-G&apos;&lt;sup&gt;o&lt;/sup&gt; = delta-H&apos;&lt;sup&gt;o&lt;/sup&gt; - T delta-S&apos;&lt;sup&gt;o&lt;/sup&gt;

Units: kJ/mole

(This definition from EcoCyc)</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BiochemicalReaction"/>
        <rdfs:range rdf:resource="&xsd;float"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#deltaS -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#deltaS">
        <rdfs:comment rdf:datatype="&xsd;string">For biochemical reactions, this property refers to the standard transformed entropy change for a reaction written in terms of biochemical reactants (sums of species), delta-S&apos;&lt;sup&gt;o&lt;/sup&gt;.

  delta-G&apos;&lt;sup&gt;o&lt;/sup&gt; = delta-H&apos;&lt;sup&gt;o&lt;/sup&gt; - T delta-S&apos;&lt;sup&gt;o&lt;/sup&gt;

(This definition from EcoCyc)</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BiochemicalReaction"/>
        <rdfs:range rdf:resource="&xsd;float"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#displayName -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#displayName">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">An abbreviated name for this entity, preferably a name that is short enough to be used in a visualization application to label a graphical element that represents this entity. If no short name is available, an xref may be used for this purpose by the visualization application.</rdfs:comment>
        <rdfs:subPropertyOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#name"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#eCNumber -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#eCNumber">
        <rdfs:comment rdf:datatype="&xsd;string">The unique number assigned to a reaction by the Enzyme Commission of the International Union of Biochemistry and Molecular Biology.

Note that not all biochemical reactions currently have EC numbers assigned to them.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BiochemicalReaction"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#id -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#id">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">The primary identifier in the external database of the object to which this xref refers.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#idVersion -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#idVersion">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The version number of the identifier (ID). E.g. The RefSeq accession number NM_005228.3 should be split into NM_005228 as the ID and 3 as the ID-VERSION.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#intraMolecular -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#intraMolecular">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">This flag represents whether the binding feature is within the same molecule or not.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BindingFeature"/>
        <rdfs:range rdf:resource="&xsd;boolean"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#ionicStrength -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#ionicStrength">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The ionic strength is defined as half of the total sum of the concentration (ci) of every ionic species (i) in the solution times the square of its charge (zi). For example, the ionic strength of a 0.1 M solution of CaCl2 is 0.5 x (0.1 x 22 + 0.2 x 12) = 0.3 M
(Definition from http://www.lsbu.ac.uk/biology/enztech/ph.html)</rdfs:comment>
        <rdfs:range rdf:resource="&xsd;float"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DeltaG"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#kPrime -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#kPrime">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The apparent equilibrium constant K&apos;. Concentrations in the equilibrium constant equation refer to the total concentrations of  all forms of particular biochemical reactants. For example, in the equilibrium constant equation for the biochemical reaction in which ATP is hydrolyzed to ADP and inorganic phosphate:

K&apos; = [ADP][P&lt;sub&gt;i&lt;/sub&gt;]/[ATP],

The concentration of ATP refers to the total concentration of all of the following species:

[ATP] = [ATP&lt;sup&gt;4-&lt;/sup&gt;] + [HATP&lt;sup&gt;3-&lt;/sup&gt;] + [H&lt;sub&gt;2&lt;/sub&gt;ATP&lt;sup&gt;2-&lt;/sup&gt;] + [MgATP&lt;sup&gt;2-&lt;/sup&gt;] + [MgHATP&lt;sup&gt;-&lt;/sup&gt;] + [Mg&lt;sub&gt;2&lt;/sub&gt;ATP].

The apparent equilibrium constant is formally dimensionless, and can be kept so by inclusion of as many of the terms (1 mol/dm&lt;sup&gt;3&lt;/sup&gt;) in the numerator or denominator as necessary.  It is a function of temperature (T), ionic strength (I), pH, and pMg (pMg = -log&lt;sub&gt;10&lt;/sub&gt;[Mg&lt;sup&gt;2+&lt;/sup&gt;]).
(Definition from EcoCyc)</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
        <rdfs:range rdf:resource="&xsd;float"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#molecularWeight -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#molecularWeight">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">Defines the molecular weight of the molecule, in daltons.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMoleculeReference"/>
        <rdfs:range rdf:resource="&xsd;float"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#name -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#name">
        <rdfs:comment xml:lang="en">One or more synonyms for the name of this individual. This should include the values of the standardName and displayName property so that it is easy to find all known names in one place.</rdfs:comment>
        <rdfs:range rdf:resource="&xsd;string"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#BioSource"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Entity"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#pMg -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#pMg">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">A measure of the concentration of magnesium (Mg) in solution. (pMg = -log&lt;sub&gt;10&lt;/sub&gt;[Mg&lt;sup&gt;2+&lt;/sup&gt;])</rdfs:comment>
        <rdfs:range rdf:resource="&xsd;float"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DeltaG"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#patoData -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#patoData">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The phenotype data from PATO, formatted as PhenoXML (defined at http://www.fruitfly.org/~cjm/obd/formats.html)</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhenotypeVocabulary"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#ph -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#ph">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">A measure of acidity and alkalinity of a solution that is a number on a scale on which a value of 7 represents neutrality and lower numbers indicate increasing acidity and higher numbers increasing alkalinity and on which each unit of change represents a tenfold change in acidity or alkalinity and that is the negative logarithm of the effective hydrogen-ion concentration or hydrogen-ion activity in gram equivalents per liter of the solution. (Definition from Merriam-Webster Dictionary)</rdfs:comment>
        <rdfs:range rdf:resource="&xsd;float"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DeltaG"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#positionStatus -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#positionStatus">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The confidence status of the sequence position. This could be:
EQUAL: The SEQUENCE-POSITION is known to be at the SEQUENCE-POSITION.
GREATER-THAN: The site is greater than the SEQUENCE-POSITION.
LESS-THAN: The site is less than the SEQUENCE-POSITION.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceSite"/>
        <rdfs:range>
            <rdfs:Datatype>
                <owl:oneOf>
                    <rdf:Description>
                        <rdf:type rdf:resource="&rdf;List"/>
                        <rdf:first rdf:datatype="&xsd;string">EQUAL</rdf:first>
                        <rdf:rest>
                            <rdf:Description>
                                <rdf:type rdf:resource="&rdf;List"/>
                                <rdf:first rdf:datatype="&xsd;string">GREATER-THAN</rdf:first>
                                <rdf:rest>
                                    <rdf:Description>
                                        <rdf:type rdf:resource="&rdf;List"/>
                                        <rdf:first rdf:datatype="&xsd;string">LESS-THAN</rdf:first>
                                        <rdf:rest rdf:resource="&rdf;nil"/>
                                    </rdf:Description>
                                </rdf:rest>
                            </rdf:Description>
                        </rdf:rest>
                    </rdf:Description>
                </owl:oneOf>
            </rdfs:Datatype>
        </rdfs:range>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#sequence -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#sequence">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">Polymer sequence in uppercase letters. For DNA, usually A,C,G,T letters representing the nucleosides of adenine, cytosine, guanine and thymine, respectively; for RNA, usually A, C, U, G; for protein, usually the letters corresponding to the 20 letter IUPAC amino acid code.</rdfs:comment>
        <rdfs:range rdf:resource="&xsd;string"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaRegionReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#ProteinReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaReference"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#sequencePosition -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#sequencePosition">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The integer listed gives the position. The first base or amino acid is position 1. In combination with the numeric value, the property &apos;POSITION-STATUS&apos; allows to express fuzzy positions, e.g. &apos;less than 4&apos;.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceSite"/>
        <rdfs:range rdf:resource="&xsd;int"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#source -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#source">
        <rdfs:comment rdf:datatype="&xsd;string">The source  in which the reference was published, such as: a book title, or a journal title and volume and pages.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PublicationXref"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#spontaneous -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#spontaneous">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">Specifies whether a conversion occurs spontaneously or not. If the spontaneity is not known, the SPONTANEOUS property should be left empty.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Conversion"/>
        <rdfs:range rdf:resource="&xsd;boolean"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#standardName -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#standardName">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">The preferred full name for this entity.</rdfs:comment>
        <rdfs:subPropertyOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#name"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#stepDirection -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#stepDirection">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">Direction of the conversion in this particular pathway context. 
This property can be used for annotating direction of enzymatic activity. Even if an enzyme catalyzes a reaction reversibly, the flow of matter through the pathway will force the equilibrium in a given direction for that particular pathway.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BiochemicalPathwayStep"/>
        <rdfs:range>
            <rdfs:Datatype>
                <owl:oneOf>
                    <rdf:Description>
                        <rdf:type rdf:resource="&rdf;List"/>
                        <rdf:first rdf:datatype="&xsd;string">LEFT-TO-RIGHT</rdf:first>
                        <rdf:rest>
                            <rdf:Description>
                                <rdf:type rdf:resource="&rdf;List"/>
                                <rdf:first rdf:datatype="&xsd;string">REVERSIBLE</rdf:first>
                                <rdf:rest>
                                    <rdf:Description>
                                        <rdf:type rdf:resource="&rdf;List"/>
                                        <rdf:first rdf:datatype="&xsd;string">RIGHT-TO-LEFT</rdf:first>
                                        <rdf:rest rdf:resource="&rdf;nil"/>
                                    </rdf:Description>
                                </rdf:rest>
                            </rdf:Description>
                        </rdf:rest>
                    </rdf:Description>
                </owl:oneOf>
            </rdfs:Datatype>
        </rdfs:range>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#stoichiometricCoefficient -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#stoichiometricCoefficient">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">Stoichiometric coefficient for one of the entities in an interaction or complex. This value can be any rational number. Generic values such as &quot;n&quot; or &quot;n+1&quot; should not be used - polymers are currently not covered.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <rdfs:range rdf:resource="&xsd;float"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#structureData -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#structureData">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">This property holds a string of data defining chemical structure or other information, in either the CML or SMILES format, as specified in property Structure-Format. If, for example, the CML format is used, then the value of this property is a string containing the XML encoding of the CML data.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ChemicalStructure"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#structureFormat -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#structureFormat">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">This property specifies which format is used to define chemical structure data.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ChemicalStructure"/>
        <rdfs:range>
            <rdfs:Datatype>
                <owl:oneOf>
                    <rdf:Description>
                        <rdf:type rdf:resource="&rdf;List"/>
                        <rdf:first rdf:datatype="&xsd;string">CML</rdf:first>
                        <rdf:rest>
                            <rdf:Description>
                                <rdf:type rdf:resource="&rdf;List"/>
                                <rdf:first rdf:datatype="&xsd;string">InChI</rdf:first>
                                <rdf:rest>
                                    <rdf:Description>
                                        <rdf:type rdf:resource="&rdf;List"/>
                                        <rdf:first rdf:datatype="&xsd;string">SMILES</rdf:first>
                                        <rdf:rest rdf:resource="&rdf;nil"/>
                                    </rdf:Description>
                                </rdf:rest>
                            </rdf:Description>
                        </rdf:rest>
                    </rdf:Description>
                </owl:oneOf>
            </rdfs:Datatype>
        </rdfs:range>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#temperature -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#temperature">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">Temperature in Celsius</rdfs:comment>
        <rdfs:range rdf:resource="&xsd;float"/>
        <rdfs:domain>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#DeltaG"/>
                    <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
                </owl:unionOf>
            </owl:Class>
        </rdfs:domain>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#templateDirection -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#templateDirection">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The direction of the template reaction on the template.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TemplateReaction"/>
        <rdfs:range>
            <rdfs:Datatype>
                <owl:oneOf>
                    <rdf:Description>
                        <rdf:type rdf:resource="&rdf;List"/>
                        <rdf:first rdf:datatype="&xsd;string">FORWARD</rdf:first>
                        <rdf:rest>
                            <rdf:Description>
                                <rdf:type rdf:resource="&rdf;List"/>
                                <rdf:first rdf:datatype="&xsd;string">REVERSE</rdf:first>
                                <rdf:rest rdf:resource="&rdf;nil"/>
                            </rdf:Description>
                        </rdf:rest>
                    </rdf:Description>
                </owl:oneOf>
            </rdfs:Datatype>
        </rdfs:range>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#term -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#term">
        <rdfs:comment rdf:datatype="&xsd;string">The external controlled vocabulary term.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#title -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#title">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">The title of the publication.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PublicationXref"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#url -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#url">
        <rdfs:comment xml:lang="en">The URL at which the publication can be found, if it is available through the Web.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PublicationXref"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#value -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#value">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment rdf:datatype="&xsd;string">The value of the score.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
        <rdfs:range rdf:resource="&xsd;string"/>
    </owl:DatatypeProperty>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#year -->

    <owl:DatatypeProperty rdf:about="http://www.biopax.org/release/biopax-level3.owl#year">
        <rdf:type rdf:resource="&owl;FunctionalProperty"/>
        <rdfs:comment xml:lang="en">The year in which this publication was published.</rdfs:comment>
        <rdfs:domain rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PublicationXref"/>
        <rdfs:range rdf:resource="&xsd;int"/>
    </owl:DatatypeProperty>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Classes
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://www.biopax.org/release/biopax-level3.owl#BindingFeature -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#BindingFeature">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#FragmentFeature"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition : An entity feature that represent the bound state of a physical entity. A pair of binding features represents a bond. 

Rationale: A physical entity in a molecular complex is considered as a new state of an entity as it is structurally and functionally different. Binding features provide facilities for describing these states. Similar to other features, a molecule can have bound and not-bound states. 

Usage: Typically, binding features are present in pairs, each describing the binding characteristic for one of the interacting physical entities. One exception is using a binding feature with no paired feature to describe any potential binding. For example, an unbound receptor can be described by using a &quot;not-feature&quot; property with an unpaired binding feature as its value.  BindingSiteType and featureLocation allows annotating the binding location.

IntraMolecular property should be set to &quot;true&quot; if the bond links two parts of the same molecule. A pair of binding features are still used where they are owned by the same physical entity. 

If the binding is due to the covalent interactions, for example in the case of lipoproteins, CovalentBindingFeature subclass should be used instead of this class.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#BioSource -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#BioSource">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ChemicalStructure"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DeltaG"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Evidence"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: The biological source (organism, tissue or cell type) of an Entity. 

Usage: Some entities are considered source-neutral (e.g. small molecules), and the biological source of others can be deduced from their constituentss (e.g. complex, pathway).

Instances: HeLa cells, Homo sapiens, and mouse liver tissue.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#BiochemicalPathwayStep -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#BiochemicalPathwayStep">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#stepProcess"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Control"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: Imposes ordering on a step in a biochemical pathway. 
Retionale: A biochemical reaction can be reversible by itself, but can be physiologically directed in the context of a pathway, for instance due to flux of reactants and products. 
Usage: Only one conversion interaction can be ordered at a time, but multiple catalysis or modulation instances can be part of one step.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#BiochemicalReaction -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#BiochemicalReaction">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Conversion"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ComplexAssembly"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Degradation"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A conversion in which molecules of one or more physicalEntity pools, undergo covalent modifications and become a member of one or more other physicalEntity pools. The substrates of biochemical reactions are defined in terms of sums of species. This is a convention in biochemistry, and, in principle, all EC reactions should be biochemical reactions.

Examples: ATP + H2O = ADP + Pi

Comment: In the example reaction above, ATP is considered to be an equilibrium mixture of several species, namely ATP4-, HATP3-, H2ATP2-, MgATP2-, MgHATP-, and Mg2ATP. Additional species may also need to be considered if other ions (e.g. Ca2+) that bind ATP are present. Similar considerations apply to ADP and to inorganic phosphate (Pi). When writing biochemical reactions, it is not necessary to attach charges to the biochemical reactants or to include ions such as H+ and Mg2+ in the equation. The reaction is written in the direction specified by the EC nomenclature system, if applicable, regardless of the physiological direction(s) in which the reaction proceeds. Polymerization reactions involving large polymers whose structure is not explicitly captured should generally be represented as unbalanced reactions in which the monomer is consumed but the polymer remains unchanged, e.g. glycogen + glucose = glycogen. A better coverage for polymerization will be developed.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Catalysis -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Catalysis">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Control"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#controlled"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Conversion"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#controlType"/>
                <owl:hasValue rdf:datatype="&xsd;string">ACTIVATION</owl:hasValue>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Modulation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TemplateReactionRegulation"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A control interaction in which a physical entity (a catalyst) increases the rate of a conversion interaction by lowering its activation energy. Instances of this class describe a pairing between a catalyzing entity and a catalyzed conversion.
Rationale: Catalysis, theoretically, is always bidirectional since it acts by lowering the activation energy. Physiologically, however, it can have a direction because of the concentration of the participants. For example, the oxidative decarboxylation catalyzed by Isocitrate dehydrogenase always happens in one direction under physiological conditions since the produced carbon dioxide is constantly removed from the system.
   
Usage: A separate catalysis instance should be created for each different conversion that a physicalEntity may catalyze and for each different physicalEntity that may catalyze a conversion. For example, a bifunctional enzyme that catalyzes two different biochemical reactions would be linked to each of those biochemical reactions by two separate instances of the catalysis class. Also, catalysis reactions from multiple different organisms could be linked to the same generic biochemical reaction (a biochemical reaction is generic if it only includes small molecules). Generally, the enzyme catalyzing a conversion is known and the use of this class is obvious, however, in the cases where a catalyzed reaction is known to occur but the enzyme is not known, a catalysis instance can be created without a controller specified.
Synonyms: facilitation, acceleration.
Examples: The catalysis of a biochemical reaction by an enzyme, the enabling of a transport interaction by a membrane pore complex, and the facilitation of a complex assembly by a scaffold protein. Hexokinase -&gt; (The &quot;Glucose + ATP -&gt; Glucose-6-phosphate +ADP&quot; reaction). A plasma membrane Na+/K+ ATPase is an active transporter (antiport pump) using the energy of ATP to pump Na+ out of the cell and K+ in. Na+ from cytoplasm to extracellular space would be described in a transport instance. K+ from extracellular space to cytoplasm would be described in a transport instance. The ATPase pump would be stored in a catalysis instance controlling each of the above transport instances. A biochemical reaction that does not occur by itself under physiological conditions, but has been observed to occur in the presence of cell extract, likely via one or more unknown enzymes present in the extract, would be stored in the CONTROLLED property, with the CONTROLLER property empty.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#CellVocabulary -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#CellVocabulary">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#CellularLocationVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReferenceTypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EvidenceCodeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalFormVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#InteractionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhenotypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RelationshipTypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceModificationVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A reference to the Cell Type Ontology (CL). Homepage at http://obofoundry.org/cgi-bin/detail.cgi?cell.  Browse at http://www.ebi.ac.uk/ontology-lookup/browse.do?ontName=CL</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#CellularLocationVocabulary -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#CellularLocationVocabulary">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReferenceTypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EvidenceCodeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalFormVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#InteractionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhenotypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RelationshipTypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceModificationVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A reference to the Gene Ontology Cellular Component (GO CC) ontology. Homepage at http://www.geneontology.org.  Browse at http://www.ebi.ac.uk/ontology-lookup/browse.do?ontName=GO</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#ChemicalStructure -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#ChemicalStructure">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#structureData"/>
                <owl:cardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:cardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#structureFormat"/>
                <owl:cardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:cardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DeltaG"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Evidence"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: The chemical structure of a small molecule. 

Usage: Structure information is stored in the property structureData, in one of three formats: the CML format (see URL www.xml-cml.org), the SMILES format (see URL www.daylight.com/dayhtml/smiles/) or the InChI format (http://www.iupac.org/inchi/). The structureFormat property specifies which format is used.

Examples: The following SMILES string describes the structure of glucose-6-phosphate:
&apos;C(OP(=O)(O)O)[CH]1([CH](O)[CH](O)[CH](O)[CH](O)O1)&apos;.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Complex -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Complex">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#memberPhysicalEntity"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Complex"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Dna"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DnaRegion"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Protein"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Rna"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegion"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMolecule"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A physical entity whose structure is comprised of other physical entities bound to each other covalently or non-covalently, at least one of which is a macromolecule (e.g. protein, DNA, or RNA) and the Stoichiometry of the components are known. 

Comment: Complexes must be stable enough to function as a biological unit; in general, the temporary association of an enzyme with its substrate(s) should not be considered or represented as a complex. A complex is the physical product of an interaction (complexAssembly) and is not itself considered an interaction.
The boundaries on the size of complexes described by this class are not defined here, although possible, elements of the cell  such a mitochondria would typically not be described using this class (later versions of this ontology may include a cellularComponent class to represent these). The strength of binding cannot be described currently, but may be included in future versions of the ontology, depending on community need.
Examples: Ribosome, RNA polymerase II. Other examples of this class include complexes of multiple protein monomers and complexes of proteins and small molecules.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#ComplexAssembly -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#ComplexAssembly">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Conversion"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Degradation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Transport"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A conversion interaction in which a set of physical entities, at least one being a macromolecule (e.g. protein, RNA, DNA), aggregate to from a complex physicalEntity. One of the participants of a complexAssembly must be an instance of the class Complex. The modification of the physicalentities involved in the ComplexAssembly is captured via BindingFeature class.

Usage: This class is also used to represent complex disassembly. The assembly or disassembly of a complex is often a spontaneous process, in which case the direction of the complexAssembly (toward either assembly or disassembly) should be specified via the SPONTANEOUS property. Conversions in which participants obtain or lose CovalentBindingFeatures ( e.g. glycolysation of proteins) should be modeled with BiochemicalReaction.

Synonyms: aggregation, complex formation

Examples: Assembly of the TFB2 and TFB3 proteins into the TFIIH complex, and assembly of the ribosome through aggregation of its subunits.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Control -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Control">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Conversion"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#GeneticInteraction"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#MolecularInteraction"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TemplateReaction"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: An interaction in which one entity regulates, modifies, or otherwise influences a continuant entity, i.e. pathway or interaction. 

Usage: Conceptually, physical entities are involved in interactions (or events) and the events are controlled or modified, not the physical entities themselves. For example, a kinase activating a protein is a frequent event in signaling pathways and is usually represented as an &apos;activation&apos; arrow from the kinase to the substrate in signaling diagrams. This is an abstraction, called &quot;Activity Flow&quot; representation,  that can be ambiguous without context. In BioPAX, this information should be captured as the kinase catalyzing (via an instance of the catalysis class) a Biochemical Reaction in which the substrate is phosphorylated. 
Subclasses of control define types specific to the biological process that is being controlled and should be used instead of the generic &quot;control&quot; class when applicable. 

A control can potentially have multiple controllers. This acts as a logical AND, i.e. both controllers are needed to regulate the  controlled event. Alternatively multiple controllers can control the same event and this acts as a logical OR, i.e. any one of them is sufficient to regulate the controlled event. Using this structure it is possible to describe arbitrary control logic using BioPAX.

Rationale: Control can be temporally non-atomic, for example a pathway can control another pathway in BioPAX.  
Synonyms: regulation, mediation

Examples: A small molecule that inhibits a pathway by an unknown mechanism.</rdfs:comment>
    </owl:Class>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.7</disponte:probability>
        <owl:annotatedSource rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Control"/>
        <owl:annotatedTarget rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
        <owl:annotatedProperty rdf:resource="&rdfs;subClassOf"/>
    </owl:Axiom>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#xref"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UnificationXref"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DeltaG"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Evidence"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Used to reference terms from external controlled vocabularies (CVs) from the ontology. To support consistency and compatibility, open, freely available CVs should be used whenever possible, such as the Gene Ontology (GO)15 or other open biological CVs listed on the OBO website (http://obo.sourceforge.net/). See the section on controlled vocabularies in Section 4 for more information.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Conversion -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Conversion">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#GeneticInteraction"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: An interaction in which molecules of one or more physicalEntity pools are physically transformed and become a member of one or more other physicalEntity pools.

Comments: Conversions in BioPAX are stoichiometric and closed world, i.e. it is assumed that all of the participants are listed. Both properties are due to the law of mass conservation. 

Usage: Subclasses of conversion represent different types of transformation reflected by the properties of different physicalEntity. BiochemicalReactions will change the ModificationFeatures on a PhysicalEntity , Transport will change the CellularLocation and ComplexAssembly will change BindingFeatures. Generic Conversion class should only be used when the modification does not fit into one of these classes. 

Example: Opening of a voltage gated channel.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#CovalentBindingFeature -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#CovalentBindingFeature">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BindingFeature"/>
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ModificationFeature"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition : An entity feature that represent the covalently bound state of  a physical entity. 

Rationale: Most frequent covalent modifications to proteins and DNA, such as phosphorylation and metylation are covered by the ModificationFeature class. In these cases, the added groups are simple and stateless therefore they can be captured by a controlled vocabulary. In other cases, such as ThiS-Thilacyl-disulfide, the covalently linked molecules are best represented as a molecular complex. CovalentBindingFeature should be used to model such covalently linked complexes.

Usage: Using this construct, it is possible to represent small molecules as a covalent complex of two other small molecules. The demarcation of small molecules is a general problem and is delegated to small molecule databases.The best practice is not to model using covalent complexes unless at least one of the participants is a protein, DNA or RNA.

Examples:
disulfide bond
UhpC + glc-6P -&gt; Uhpc-glc-6p
acetyl-ACP -&gt; decenoyl-ACP
charged tRNA</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Degradation -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Degradation">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Conversion"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#conversionDirection"/>
                <owl:hasValue rdf:datatype="&xsd;string">LEFT-TO-RIGHT</owl:hasValue>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Transport"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A conversion in which a pool of macromolecules are degraded into their elementary units.

Usage: This conversion always has a direction of left-to-right and is irreversible. Degraded molecules are always represented on the left, degradation products on the right. 

Comments: Degradation is a complex abstraction over multiple reactions. Although it obeys law of mass conservation and stoichiometric, the products are rarely specified since they are ubiquitous.

Example:  Degradation of a protein to amino acids.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#DeltaG -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#DeltaG">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#deltaGPrime0"/>
                <owl:cardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:cardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Evidence"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: Standard transformed Gibbs energy change for a reaction written in terms of biochemical reactants.  
Usage: Delta-G is represented as a 5-tuple of delta-G&apos;&lt;sup&gt;0&lt;/sup&gt;, temperature, ionic strength , pH, and pMg . A conversion in BioPAX may have multiple Delta-G values, representing different measurements for delta-G&apos;&lt;sup&gt;0&lt;/sup&gt; obtained under the different experimental conditions.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Dna -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Dna">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#entityReference"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DnaReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#memberPhysicalEntity"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Dna"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DnaRegion"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Protein"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Rna"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegion"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMolecule"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A physical entity consisting of a sequence of deoxyribonucleotide monophosphates; a deoxyribonucleic acid.
Usage: DNA should be used for pools of individual DNA molecules. For describing subregions on those molecules use DNARegion.
Examples: a chromosome, a plasmid. A specific example is chromosome 7 of Homo sapiens.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#DnaReference -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaReference">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#memberEntityReference"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DnaReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#subRegion"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DnaRegionReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DnaRegionReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ProteinReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMoleculeReference"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A DNA reference is a grouping of several DNA entities that are common in sequence.  Members can differ in celular location, sequence features, SNPs, mutations and bound partners.

Comments : Note that this is not a reference gene. Genes are non-physical,stateless continuants. Their physical manifestations can span multiple DNA molecules, sometimes even across chromosomes due to regulatory regions. Similarly a gene is not necessarily made up of deoxyribonucleic acid and can be present in multiple copies ( which are different DNA regions).</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#DnaRegion -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaRegion">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#memberPhysicalEntity"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DnaRegion"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#entityReference"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DnaRegionReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Protein"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Rna"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegion"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMolecule"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A region on a DNA molecule. 
Usage:  DNARegion is not a pool of independent molecules but a subregion on these molecules. As such, every DNARegion has a defining DNA molecule.  
Examples: Protein encoding region, promoter</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#DnaRegionReference -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#DnaRegionReference">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#subRegion"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#DnaRegionReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ProteinReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMoleculeReference"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A DNARegionReference is a grouping of several DNARegion entities that are common in sequence and genomic position.  Members can differ in cellular location, sequence features, SNPs, mutations and bound partners.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Entity -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Entity">
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A discrete biological unit used when describing pathways. 

Rationale: Entity is the most abstract class for representing interacting 
    elements in a pathway. It includes both occurents (interactions and 
    pathways) and continuants (physical entities and genes). Loosely speaking, 
    BioPAX Entity is an atomic scientific statement with an associated source, 
    evidence and references. 
Synonyms: element, thing, object, bioentity, statement.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#EntityFeature -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#EntityFeature">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Evidence"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Description: A characteristic of a physical entity that can change while the entity still retains its biological identity. 

Rationale: Two phosphorylated forms of a protein are strictly speaking different chemical  molecules. It is, however, standard in biology to treat them as different states of the same entity, where the entity is loosely defined based on sequence. Entity Feature class and its subclassses captures these variable characteristics. A Physical Entity in BioPAX represents a pool of  molecules rather than an individual molecule. This is a notion imported from chemistry( See PhysicalEntity). Pools are defined by a set of Entity Features in the sense that a single molecule must have all of the features in the set in order to be considered a member of the pool. Since it is impossible to list and experimentally test all potential features for an  entity, features that are not listed in the selection criteria is neglected Pools can also be defined by the converse by specifying features  that are known to NOT exist in a specific context. As DNA, RNA and Proteins can be hierarchicaly organized into families based on sequence homology so can entity features. The memberFeature property allows capturing such hierarchical classifications among entity features.


Usage: Subclasses of entity feature describe most common biological instances and should be preferred whenever possible. One common usecase for instantiating  entity feature is, for describing active/inactive states of proteins where more specific feature information is not available.  

Examples: Open/close conformational state of channel proteins, &quot;active&quot;/&quot;inactive&quot; states, excited states of photoreactive groups.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#EntityReference -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#EntityReference">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Evidence"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMolecule"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: An entity reference is a grouping of several physical entities across different contexts and molecular states, that share common physical properties and often named and treated as a single entity with multiple states by biologists. 

Rationale:   Many protein, small molecule and gene databases share this point of view, and such a grouping is an important prerequisite for interoperability with those databases. Biologists would often group different pools of molecules in different contexts under the same name. For example cytoplasmic and extracellular calcium have different effects on the cell&apos;s behavior, but they are still called calcium. For DNA, RNA and Proteins the grouping is defined based on a wildtype sequence, for small molecules it is defined by the chemical structure.

Usage: Entity references store the information common to a set of molecules in various states described in the BioPAX document, including database cross-references. For instance, the P53 protein can be phosphorylated in multiple different ways. Each separate P53 protein (pool) in a phosphorylation state would be represented as a different protein (child of physicalEntity) and all things common to all P53 proteins, including all possible phosphorylation sites, the sequence common to all of them and common references to protein databases containing more information about P53 would be stored in a Entity Reference.  

Comments: This grouping has three semantic implications:

1.  Members of different pools share many physical and biochemical properties. This includes their chemical structure, sequence, organism and set of molecules they react with. They will also share a lot of secondary information such as their names, functional groupings, annotation terms and database identifiers.

2. A small number of transitions seperates these pools. In other words it is relatively easy and frequent for a molecule to transform from one physical entity to another that belong to the same reference entity. For example an extracellular calcium can become cytoplasmic, and p53 can become phosphorylated. However no calcium virtually becomes sodium, or no p53 becomes mdm2. In the former it is the sheer energy barrier of a nuclear reaction, in the latter sheer statistical improbability of synthesizing the same sequence without a template. If one thinks about the biochemical network as molecules transforming into each other, and remove edges that respond to transcription, translation, degradation and covalent modification of small molecules, each remaining component is a reference entity.

3. Some of the pools in the same group can overlap. p53-p@ser15 can overlap with p53-p@thr18. Most of the experiments in molecular biology will only check for one state variable, rarely multiple, and never for the all possible combinations. So almost all statements that refer to the state of the molecule talk about a pool that can overlap with other pools. However no overlaps is possible between molecules of different groups.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#EntityReferenceTypeVocabulary -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#EntityReferenceTypeVocabulary">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EvidenceCodeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalFormVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#InteractionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhenotypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RelationshipTypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceModificationVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A reference to a term from an entity reference group ontology. As of the writing of this documentation, there is no standard ontology of these terms, though a common type is "homology".</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Evidence -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Evidence">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <rdfs:subClassOf>
            <owl:Class>
                <owl:unionOf rdf:parseType="Collection">
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#confidence"/>
                        <owl:minCardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:minCardinality>
                    </owl:Restriction>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#evidenceCode"/>
                        <owl:minCardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:minCardinality>
                    </owl:Restriction>
                    <owl:Restriction>
                        <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#experimentalForm"/>
                        <owl:minCardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:minCardinality>
                    </owl:Restriction>
                </owl:unionOf>
            </owl:Class>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: The support for a particular assertion, such as the existence of an interaction or pathway. 
Usage: At least one of confidence, evidenceCode, or experimentalForm must be instantiated when creating an evidence instance. XREF may reference a publication describing the experimental evidence using a publicationXref or may store a description of the experiment in an experimental description database using a unificationXref (if the referenced experiment is the same) or relationshipXref (if it is not identical, but similar in some way e.g. similar in protocol). Evidence is meant to provide more information than just an xref to the source paper.
Examples: A description of a molecular binding assay that was used to detect a protein-protein interaction.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#EvidenceCodeVocabulary -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#EvidenceCodeVocabulary">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ExperimentalFormVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#InteractionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhenotypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RelationshipTypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceModificationVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A reference to the PSI Molecular Interaction ontology (MI) experimental method types, including &quot;interaction detection method&quot;, &quot;participant identification method&quot;, &quot;feature detection method&quot;. Homepage at http://www.psidev.info/.  Browse at http://www.ebi.ac.uk/ontology-lookup/browse.do?ontName=MI

Terms from the Pathway Tools Evidence Ontology may also be used. Homepage http://brg.ai.sri.com/evidence-ontology/</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#ExperimentalForm">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#experimentalFormDescription"/>
                <owl:minCardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:minCardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#KPrime"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: The form of a physical entity in a particular experiment, as it may be modified for purposes of experimental design.
Examples: A His-tagged protein in a binding assay. A protein can be tagged by multiple tags, so can have more than 1 experimental form type terms</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#ExperimentalFormVocabulary -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#ExperimentalFormVocabulary">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#InteractionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhenotypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RelationshipTypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceModificationVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A reference to the PSI Molecular Interaction ontology (MI) participant identification method (e.g. mass spectrometry), experimental role (e.g. bait, prey), experimental preparation (e.g. expression level) type. Homepage at http://www.psidev.info/.  Browse http://www.ebi.ac.uk/ontology-lookup/browse.do?ontName=MI&amp;termId=MI%3A0002&amp;termName=participant%20identification%20method

http://www.ebi.ac.uk/ontology-lookup/browse.do?ontName=MI&amp;termId=MI%3A0495&amp;termName=experimental%20role

http://www.ebi.ac.uk/ontology-lookup/browse.do?ontName=MI&amp;termId=MI%3A0346&amp;termName=experimental%20preparation</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#FragmentFeature -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#FragmentFeature">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ModificationFeature"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: An entity feature that represents the resulting physical entity subsequent to a cleavage or degradation event. 

Usage: Fragment Feature can be used to cover multiple types of modfications to the sequence of the physical entity: 
1.    A protein with a single cleavage site that converts the protein into two fragments (e.g. pro-insulin converted to insulin and C-peptide). TODO: CV term for sequence fragment?  PSI-MI CV term for cleavage site?
2.    A protein with two cleavage sites that removes an internal sequence e.g. an intein i.e. ABC -&gt; A
3.    Cleavage of a circular sequence e.g. a plasmid.

In the case of removal ( e.g. intron)  the fragment that is *removed* is specified in the feature location property. In the case of a &quot;cut&quot; (e.g. restriction enzyme cut site) the location of the cut is specified instead.
Examples: Insulin Hormone</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Gene -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Gene">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#organism"/>
                <owl:maxCardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:maxCardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Pathway"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A continuant that encodes information that can be inherited through replication. 
Rationale: Gene is an abstract continuant that can be best described as a &quot;schema&quot;, a common conception commonly used by biologists to demark a component within genome. In BioPAX, Gene is considered a generalization over eukaryotic and prokaryotic genes and is used only in genetic interactions.  Gene is often confused with DNA and RNA fragments, however, these are considered the physical encoding of a gene.  N.B. Gene expression regulation makes use of DNA and RNA physical entities and not this class.
Usage: Gene should only be used for describing GeneticInteractions.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#GeneticInteraction -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#GeneticInteraction">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#interactionType"/>
                <owl:maxCardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:maxCardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#phenotype"/>
                <owl:cardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:cardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Gene"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
                <owl:minCardinality rdf:datatype="&xsd;nonNegativeInteger">2</owl:minCardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#MolecularInteraction"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TemplateReaction"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition : Genetic interactions between genes occur when two genetic perturbations (e.g. mutations) have a combined phenotypic effect not caused by either perturbation alone. A gene participant in a genetic interaction represents the gene that is perturbed. Genetic interactions are not physical interactions but logical (AND) relationships. Their physical manifestations can be complex and span an arbitarily long duration. 

Rationale: Currently,  BioPAX provides a simple definition that can capture most genetic interactions described in the literature. In the future, if required, the definition can be extended to capture other logical relationships and different, participant specific phenotypes. 

Example: A synthetic lethal interaction occurs when cell growth is possible without either gene A OR B, but not without both gene A AND B. If you knock out A and B together, the cell will die.</rdfs:comment>
    </owl:Class>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.7</disponte:probability>
        <owl:annotatedSource rdf:resource="http://www.biopax.org/release/biopax-level3.owl#GeneticInteraction"/>
        <owl:annotatedTarget rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
        <owl:annotatedProperty rdf:resource="&rdfs;subClassOf"/>
    </owl:Axiom>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Interaction -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Interaction">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Entity"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Pathway"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A biological relationship between two or more entities. 

Rationale: In BioPAX, interactions are atomic from a database modeling perspective, i.e. interactions can not be decomposed into sub-interactions. When representing non-atomic continuants with explicit subevents the pathway class should be used instead. Interactions are not necessarily  temporally atomic, for example genetic interactions cover a large span of time. Interactions as a formal concept is a continuant, it retains its identitiy regardless of time, or any differences in specific states or properties.

Usage: Interaction is a highly abstract class and in almost all cases it is more appropriate to use one of the subclasses of interaction. 
It is partially possible to define generic reactions by using generic participants. A more comprehensive method is planned for BioPAX L4 for covering all generic cases like oxidization of a generic alcohol.   

Synonyms: Process, relationship, event.

Examples: protein-protein interaction, biochemical reaction, enzyme catalysis</rdfs:comment>
    </owl:Class>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.89</disponte:probability>
        <owl:annotatedSource rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
        <owl:annotatedTarget rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Pathway"/>
        <owl:annotatedProperty rdf:resource="&owl;disjointWith"/>
    </owl:Axiom>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#InteractionVocabulary -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#InteractionVocabulary">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhenotypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RelationshipTypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceModificationVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A reference to the PSI Molecular Interaction ontology (MI) interaction type. Homepage at http://www.psidev.info/.  Browse at http://www.ebi.ac.uk/ontology-lookup/browse.do?ontName=MI&amp;termId=MI%3A0190&amp;termName=interaction%20type</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#KPrime -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#KPrime">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#kPrime"/>
                <owl:cardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:cardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PathwayStep"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: The apparent equilibrium constant, K&apos;, and associated values. 
Usage: Concentrations in the equilibrium constant equation refer to the total concentrations of  all forms of particular biochemical reactants. For example, in the equilibrium constant equation for the biochemical reaction in which ATP is hydrolyzed to ADP and inorganic phosphate:

K&apos; = [ADP][P&lt;sub&gt;i&lt;/sub&gt;]/[ATP],

The concentration of ATP refers to the total concentration of all of the following species:

[ATP] = [ATP&lt;sup&gt;4-&lt;/sup&gt;] + [HATP&lt;sup&gt;3-&lt;/sup&gt;] + [H&lt;sub&gt;2&lt;/sub&gt;ATP&lt;sup&gt;2-&lt;/sup&gt;] + [MgATP&lt;sup&gt;2-&lt;/sup&gt;] + [MgHATP&lt;sup&gt;-&lt;/sup&gt;] + [Mg&lt;sub&gt;2&lt;/sub&gt;ATP].

The apparent equilibrium constant is formally dimensionless, and can be kept so by inclusion of as many of the terms (1 mol/dm&lt;sup&gt;3&lt;/sup&gt;) in the numerator or denominator as necessary.  It is a function of temperature (T), ionic strength (I), pH, and pMg (pMg = -log&lt;sub&gt;10&lt;/sub&gt;[Mg&lt;sup&gt;2+&lt;/sup&gt;]). Therefore, these quantities must be specified to be precise, and values for KEQ for biochemical reactions may be represented as 5-tuples of the form (K&apos; T I pH pMg).  This property may have multiple values, representing different measurements for K&apos; obtained under the different experimental conditions listed in the 5-tuple. (This definition adapted from EcoCyc)

See http://www.chem.qmul.ac.uk/iubmb/thermod/ for a thermodynamics tutorial.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#ModificationFeature -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#ModificationFeature">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityFeature"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: An entity feature that represents  the covalently modified state of a dna, rna or a protein. 

Rationale: In Biology, identity of DNA, RNA and Protein entities are defined around a wildtype sequence. Covalent modifications to this basal sequence are represented using modificaton features. Since small molecules are identified based on their chemical structure, not sequence, a covalent modification to a small molecule would result in a different molecule. 

Usage: The added groups should be simple and stateless, such as phosphate or methyl groups and are captured by the modificationType controlled vocabulary. In other cases, such as covalently linked proteins, use CovalentBindingFeature instead. 

Instances: A phosphorylation on a protein, a methylation on a DNA.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Modulation -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Modulation">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Control"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#controller"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#controlled"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Catalysis"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TemplateReactionRegulation"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A control interaction in which a physical entity modulates a catalysis interaction. 

Rationale: Biologically, most modulation interactions describe an interaction in which a small molecule alters the ability of an enzyme to catalyze a specific reaction. Instances of this class describe a pairing between a modulating entity and a catalysis interaction.

Usage:  A typical modulation instance has a small molecule as the controller entity and a catalysis instance as the controlled entity. A separate modulation instance should be created for each different catalysis instance that a physical entity may modulate, and for each different physical entity that may modulate a catalysis instance.
Examples: Allosteric activation and competitive inhibition of an enzyme&apos;s ability to catalyze a specific reaction.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#MolecularInteraction -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#MolecularInteraction">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: An interaction in which participants bind physically to each other, directly or indirectly through intermediary molecules.

Rationale: There is a large body of interaction data, mostly produced by high throughput systems, that does not satisfy the level of detail required to model them with ComplexAssembly class. Specifically, what is lacking is the stoichiometric information and completeness (closed-world) of participants required to model them as chemical processes. Nevertheless interaction data is extremely useful and can be captured in BioPAX using this class. 
 
Usage: This class should be used by default for representing molecular interactions such as those defined by PSI-MI level 2.5. The participants in a molecular interaction should be listed in the PARTICIPANT slot. Note that this is one of the few cases in which the PARTICPANT slot should be directly populated with instances (see comments on the PARTICPANTS property in the interaction class description). If all participants are known with exact stoichiometry, ComplexAssembly class should be used instead.

Example: Two proteins observed to interact in a yeast-two-hybrid experiment where there is not enough experimental evidence to suggest that the proteins are forming a complex by themselves without any indirect involvement of other proteins. This is the case for most large-scale yeast two-hybrid screens.</rdfs:comment>
    </owl:Class>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.2</disponte:probability>
        <owl:annotatedSource rdf:resource="http://www.biopax.org/release/biopax-level3.owl#MolecularInteraction"/>
        <owl:annotatedProperty rdf:resource="&rdfs;subClassOf"/>
        <owl:annotatedTarget>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
            </owl:Restriction>
        </owl:annotatedTarget>
    </owl:Axiom>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Pathway -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Pathway">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Entity"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A set or series of interactions, often forming a network, which biologists have found useful to group together for organizational, historic, biophysical or other reasons.

Usage: Pathways can be used for demarcating any subnetwork of a BioPAX model. It is also possible to define a pathway without specifying the interactions within the pathway. In this case, the pathway instance could consist simply of a name and could be treated as a &apos;black box&apos;.  Pathways can also soverlap, i.e. a single interaction might belong to multiple pathways. Pathways can also contain sub-pathways. Pathways are continuants.

Synonyms: network, module, cascade,  
Examples: glycolysis, valine biosynthesis, EGFR signaling</rdfs:comment>
    </owl:Class>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.89</disponte:probability>
        <owl:annotatedSource rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
        <owl:annotatedTarget rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Pathway"/>
        <owl:annotatedProperty rdf:resource="&owl;disjointWith"/>
    </owl:Axiom>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.9</disponte:probability>
        <owl:annotatedTarget rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Entity"/>
        <owl:annotatedSource rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Pathway"/>
        <owl:annotatedProperty rdf:resource="&rdfs;subClassOf"/>
    </owl:Axiom>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#PathwayStep -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#PathwayStep">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Provenance"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A step in an ordered pathway.
Rationale: Some pathways can have a temporal order. For example,  if the pathway boundaries are based on a perturbation phenotype link, the pathway might start with the perturbing agent and end at gene expression leading to the observed changes. Pathway steps can represent directed compound graphs.
Usage: Multiple interactions may occur in a pathway step, each should be listed in the stepProcess property. Order relationships between pathway steps may be established with the nextStep slot. If the reaction contained in the step is a reversible biochemical reaction but physiologically has a direction in the context of this pathway, use the subclass BiochemicalPathwayStep.

Example: A metabolic pathway may contain a pathway step composed of one biochemical reaction (BR1) and one catalysis (CAT1) instance, where CAT1 describes the catalysis of BR1. The M phase of the cell cycle, defined as a pathway, precedes the G1 phase, also defined as a pathway.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#PhenotypeVocabulary -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#PhenotypeVocabulary">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RelationshipTypeVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceModificationVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: The phenotype measured in the experiment e.g. growth rate or viability of a cell. This is only the type, not the value e.g. for a synthetic lethal interaction, the phenotype is viability, specified by ID: PATO:0000169, &quot;viability&quot;, not the value (specified by ID: PATO:0000718, &quot;lethal (sensu genetics)&quot;. A single term in a phenotype controlled vocabulary can be referenced using the xref, or the PhenoXML describing the PATO EQ model phenotype description can be stored as a string in PATO-DATA.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Entity"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A pool of molecules or molecular complexes. 

Comments: Each PhysicalEntity is defined by a  sequence or structure based on an EntityReference AND any set of Features that are given. For example,  ser46 phosphorylated p53 is a physical entity in BioPAX defined by the p53 sequence and the phosphorylation feature on the serine at position 46 in the sequence.  Features are any combination of cellular location, covalent and non-covalent bonds with other molecules and covalent modifications.  

For a specific molecule to be a member of the pool it has to satisfy all of the specified features. Unspecified features are treated as unknowns or unneccesary. Features that are known to not be on the molecules should be explicitly stated with the &quot;not feature&quot; property. 
A physical entity in BioPAX  never represents a specific molecular instance. 

Physical Entity can be heterogenous and potentially overlap, i.e. a single molecule can be counted as a member of multiple pools. This makes BioPAX semantics different than regular chemical notation but is necessary for dealing with combinatorial complexity. 

Synonyms: part, interactor, object, species

Examples: extracellular calcium, ser 64 phosphorylated p53</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Protein -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Protein">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#entityReference"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ProteinReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#memberPhysicalEntity"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Protein"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Rna"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegion"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMolecule"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A physical entity consisting of a sequence of amino acids; a protein monomer; a single polypeptide chain.
Examples: The epidermal growth factor receptor (EGFR) protein.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#ProteinReference -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#ProteinReference">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#memberEntityReference"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ProteinReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMoleculeReference"/>
        <rdfs:comment rdf:datatype="&xsd;string">A protein reference is a grouping of several protein entities that are encoded by the same gene.  Members can differ in celular location, sequence features and bound partners. Currently conformational states (such as open and closed) are not covered.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Provenance -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Provenance">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#xref"/>
                <owl:allValuesFrom>
                    <owl:Class>
                        <owl:unionOf rdf:parseType="Collection">
                            <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#PublicationXref"/>
                            <rdf:Description rdf:about="http://www.biopax.org/release/biopax-level3.owl#UnificationXref"/>
                        </owl:unionOf>
                    </owl:Class>
                </owl:allValuesFrom>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Score"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: The direct source of pathway data or score.
Usage: This does not store the trail of sources from the generation of the data to this point, only the last known source, such as a database, tool or algorithm. The xref property may contain a publicationXref referencing a publication describing the data source (e.g. a database publication). A unificationXref may be used when pointing to an entry in a database of databases describing this database.
Examples: A database, scoring method or person name.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#PublicationXref -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#PublicationXref">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UnificationXref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: An xref that defines a reference to a publication such as a book, journal article, web page, or software manual.
Usage:  The reference may or may not be in a database, although references to PubMed are preferred when possible. The publication should make a direct reference to the instance it is attached to. Publication xrefs should make use of PubMed IDs wherever possible. The DB property of an xref to an entry in PubMed should use the string &quot;PubMed&quot; and not &quot;MEDLINE&quot;.
Examples: PubMed:10234245</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#RelationshipTypeVocabulary -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#RelationshipTypeVocabulary">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceModificationVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: Vocabulary for defining relationship Xref types. A reference to the PSI Molecular Interaction ontology (MI) Cross Reference type. Homepage at http://www.psidev.info/.  Browse at http://www.ebi.ac.uk/ontology-lookup/browse.do?ontName=MI&amp;termId=MI%3A0353&amp;termName=cross-reference%20type</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#RelationshipXref -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#RelationshipXref">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: An xref that defines a reference to an entity in an external resource that does not have the same biological identity as the referring entity.
Usage: There is currently no controlled vocabulary of relationship types for BioPAX, although one will be created in the future if a need develops.
Examples: A link between a gene G in a BioPAX data collection, and the protein product P of that gene in an external database. This is not a unification xref because G and P are different biological entities (one is a gene and one is a protein). Another example is a relationship xref for a protein that refers to the Gene Ontology biological process, e.g. &apos;immune response,&apos; that the protein is involved in.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Rna -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Rna">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#entityReference"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#memberPhysicalEntity"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Rna"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegion"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMolecule"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A physical entity consisting of a sequence of ribonucleotide monophosphates; a ribonucleic acid.
Usage: RNA should be used for pools of individual RNA molecules. For describing subregions on those molecules use RNARegion.
Examples: messengerRNA, microRNA, ribosomalRNA. A specific example is the let-7 microRNA.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#RnaReference -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaReference">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#subRegion"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#memberEntityReference"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMoleculeReference"/>
        <rdfs:comment rdf:datatype="&xsd;string">Defintion: A RNA  reference is a grouping of several RNA entities that are either encoded by the same gene or replicates of the same genome.  Members can differ in celular location, sequence features and bound partners. Currently conformational states (such as hairpin) are not covered.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#RnaRegion -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaRegion">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#entityReference"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#memberPhysicalEntity"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegion"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMolecule"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A region on a RNA molecule. 
Usage: RNARegion is not a pool of independent molecules but a subregion on these molecules. As such, every RNARegion has a defining RNA molecule.  
Examples: CDS, 3&apos; UTR, Hairpin</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#subRegion"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#RnaRegionReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMoleculeReference"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A RNARegion reference is a grouping of several RNARegion entities that are common in sequence and genomic position.  Members can differ in celular location, sequence features, mutations and bound partners.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Score -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Score">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#value"/>
                <owl:cardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:cardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A score associated with a publication reference describing how the score was determined, the name of the method and a comment briefly describing the method.
Usage:  The xref must contain at least one publication that describes the method used to determine the score value. There is currently no standard way of describing  values, so any string is valid.
Examples: The statistical significance of a result, e.g. &quot;p&lt;0.05&quot;.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#SequenceInterval -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#SequenceInterval">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceSite"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: An interval on a sequence. 
Usage: Interval is defined as an ordered pair of SequenceSites. All of the sequence from the begin site to the end site (inclusive) is described, not any subset.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#SequenceLocation -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A location on a nucleotide or amino acid sequence.
Usage: For most purposes it is more appropriate to use subclasses of this class. Direct instances of SequenceLocation can be used for uknown locations that can not be classified neither as an interval nor a site.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#SequenceModificationVocabulary -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#SequenceModificationVocabulary">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definiiton: A reference to the PSI Molecular Interaction ontology (MI) of covalent sequence modifications. Homepage at http://www.psidev.info/.  Browse at http://www.ebi.ac.uk/ontology-lookup/browse.do?ontName=MI&amp;termId=MI%3A0252&amp;termName=biological%20feature. Only children that are covelent modifications at specific positions can be used.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#SequenceRegionVocabulary">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A reference to a controlled vocabulary of sequence regions, such as InterPro or Sequence Ontology (SO). Homepage at http://www.sequenceontology.org/.  Browse at http://www.ebi.ac.uk/ontology-lookup/browse.do?ontName=SO</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#SequenceSite -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#SequenceSite">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SequenceLocation"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: Describes a site on a sequence, i.e. the position of a single nucleotide or amino acid.
Usage: A sequence site is always defined based on the reference sequence of the owning entity. For DNARegion and RNARegion it is relative to the region itself not the genome or full RNA molecule.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#SmallMolecule -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#SmallMolecule">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#feature"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BindingFeature"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#notFeature"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BindingFeature"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#entityReference"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMoleculeReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#memberPhysicalEntity"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMolecule"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A pool of molecules that are neither complexes nor are genetically encoded.

Rationale: Identity of small molecules are based on structure, rather than sequence as in the case of DNA, RNA or Protein. A small molecule reference is a grouping of several small molecule entities  that have the same chemical structure.  

Usage : Smalle Molecules can have a cellular location and binding features. They can&apos;t have modification features as covalent modifications of small molecules are not considered as state changes but treated as different molecules.
Some non-genomic macromolecules, such as large complex carbohydrates are currently covered by small molecules despite they lack a static structure. Better coverage for such molecules require representation of generic stoichiometry and polymerization, currently planned for BioPAX level 4.

Examples: glucose, penicillin, phosphatidylinositol</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#SmallMoleculeReference -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#SmallMoleculeReference">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#EntityReference"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#memberEntityReference"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#SmallMoleculeReference"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="&xsd;string">A small molecule reference is a grouping of several small molecule entities  that have the same chemical structure.  Members can differ in celular location and bound partners. Covalent modifications of small molecules are not considered as state changes but treated as different molecules.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Stoichiometry -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Stoichiometry">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#stoichiometricCoefficient"/>
                <owl:cardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:cardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#physicalEntity"/>
                <owl:cardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:cardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <owl:disjointWith rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: Stoichiometric coefficient of a physical entity in the context of a conversion or complex.
Usage: For each participating element there must be 0 or 1 stoichiometry element. A non-existing stoichiometric element is treated as unknown.
This is an n-ary bridge for left, right and component properties. Relative stoichiometries ( e.g n, n+1) often used for describing polymerization is not supported.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#TemplateReaction -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#TemplateReaction">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Interaction"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#participant"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="&xsd;string">Definiton: An interaction where a macromolecule is polymerized from a 
    template macromolecule. 

Rationale: This is an abstraction over multiple (not explicitly stated) biochemical 
    reactions. The ubiquitous molecules (NTP and amino acids) consumed are also usually
    omitted. Template reaction is non-stoichiometric, does not obey law of 
    mass conservation and temporally non-atomic. It, however, provides a 
    mechanism to capture processes that are central to all living organisms.  

Usage: Regulation of TemplateReaction, e.g. via a transcription factor can be 
    captured using TemplateReactionRegulation. TemplateReaction can also be 
    indirect  for example, it is not necessary to represent intermediary mRNA 
    for describing expression of a protein. It was decided to not subclass 
    TemplateReaction to subtypes such as transcription of translation for the 
    sake of  simplicity. If needed these subclasses can be added in the 
    future. 

Examples: Transcription, translation, replication, reverse transcription. E.g. 
    DNA to RNA is transcription, RNA to protein is translation and DNA to 
    protein is protein expression from DNA.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#TemplateReactionRegulation -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#TemplateReactionRegulation">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Control"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#controlled"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TemplateReaction"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#controlType"/>
                <owl:allValuesFrom>
                    <rdfs:Datatype>
                        <owl:oneOf>
                            <rdf:Description>
                                <rdf:type rdf:resource="&rdf;List"/>
                                <rdf:first rdf:datatype="&xsd;string">ACTIVATION</rdf:first>
                                <rdf:rest>
                                    <rdf:Description>
                                        <rdf:type rdf:resource="&rdf;List"/>
                                        <rdf:first rdf:datatype="&xsd;string">INHIBITION</rdf:first>
                                        <rdf:rest rdf:resource="&rdf;nil"/>
                                    </rdf:Description>
                                </rdf:rest>
                            </rdf:Description>
                        </owl:oneOf>
                    </rdfs:Datatype>
                </owl:allValuesFrom>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#controller"/>
                <owl:allValuesFrom rdf:resource="http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: Regulation of an expression reaction by a controlling element such as a transcription factor or microRNA. 

Usage: To represent the binding of the transcription factor to a regulatory element in the TemplateReaction, create a complex of the transcription factor and the regulatory element and set that as the controller.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#TissueVocabulary">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#ControlledVocabulary"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A reference to the BRENDA (BTO). Homepage at http://www.brenda-enzymes.info/.  Browse at http://www.ebi.ac.uk/ontology-lookup/browse.do?ontName=BTO</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Transport -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Transport">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Conversion"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: An conversion in which molecules of one or more physicalEntity pools change their subcellular location and become a member of one or more other physicalEntity pools. A transport interaction does not include the transporter entity, even if one is required in order for the transport to occur. Instead, transporters are linked to transport interactions via the catalysis class.

Usage: If there is a simultaneous chemical modification of the participant(s), use transportWithBiochemicalReaction class.

Synonyms: translocation.

Examples: The movement of Na+ into the cell through an open voltage-gated channel.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#TransportWithBiochemicalReaction -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#TransportWithBiochemicalReaction">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BiochemicalReaction"/>
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Transport"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A conversion interaction that is both a biochemicalReaction and a transport. In transportWithBiochemicalReaction interactions, one or more of the substrates changes both their location and their physical structure. Active transport reactions that use ATP as an energy source fall under this category, even if the only covalent change is the hydrolysis of ATP to ADP.

Rationale: This class was added to support a large number of transport events in pathway databases that have a biochemical reaction during the transport process. It is not expected that other double inheritance subclasses will be added to the ontology at the same level as this class.

Examples: In the PEP-dependent phosphotransferase system, transportation of sugar into an E. coli cell is accompanied by the sugar&apos;s phosphorylation as it crosses the plasma membrane.</rdfs:comment>
    </owl:Class>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.9</disponte:probability>
        <owl:annotatedTarget rdf:resource="http://www.biopax.org/release/biopax-level3.owl#BiochemicalReaction"/>
        <owl:annotatedSource rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TransportWithBiochemicalReaction"/>
        <owl:annotatedProperty rdf:resource="&rdfs;subClassOf"/>
    </owl:Axiom>
    <owl:Axiom>
        <disponte:probability rdf:datatype="&xsd;decimal">0.8</disponte:probability>
        <owl:annotatedTarget rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Transport"/>
        <owl:annotatedSource rdf:resource="http://www.biopax.org/release/biopax-level3.owl#TransportWithBiochemicalReaction"/>
        <owl:annotatedProperty rdf:resource="&rdfs;subClassOf"/>
    </owl:Axiom>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#UnificationXref -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#UnificationXref">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#Xref"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#db"/>
                <owl:cardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:cardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.biopax.org/release/biopax-level3.owl#id"/>
                <owl:cardinality rdf:datatype="&xsd;nonNegativeInteger">1</owl:cardinality>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A unification xref defines a reference to an entity in an external resource that has the same biological identity as the referring entity
Rationale: Unification xrefs are critically important for data integration. In the future they may be replaced by direct miriam links and rdf:id based identity management. 

Usage: For example, if one wished to link from a database record, C, describing a chemical compound in a BioPAX data collection to a record, C&apos;, describing the same chemical compound in an external database, one would use a unification xref since records C and C&apos; describe the same biological identity. Generally, unification xrefs should be used whenever possible, although there are cases where they might not be useful, such as application to application data exchange.Identity of interactions can be computed based on the  identity of its participants. An xref in a protein pointing to a gene, e.g. in the LocusLink database17, would not be a unification xref since the two entities do not have the same biological identity (one is a protein, the other is a gene). Instead, this link should be a captured as a relationship xref. References to an external controlled vocabulary term within the OpenControlledVocabulary class should use a unification xref where possible (e.g. GO:0005737).
Examples: An xref in a protein instance pointing to an entry in the Swiss-Prot database, and an xref in an RNA instance pointing to the corresponding RNA sequence in the RefSeq database..</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#UtilityClass -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#UtilityClass">
        <rdfs:comment rdf:datatype="&xsd;string">Definition: This is a placeholder for classes, used for annotating the &quot;Entity&quot; and its subclasses. Mostly, these are not  an &quot;Entity&quot; themselves. Examples include references to external databases, controlled vocabularies, evidence and provenance.

Rationale: Utility classes are created when simple slots are insufficient to describe an aspect of an entity or to increase compatibility of this ontology with other standards.  

Usage: The utilityClass class is actually a metaclass and is only present to organize the other helper classes under one class hierarchy; instances of utilityClass should never be created.</rdfs:comment>
    </owl:Class>
    


    <!-- http://www.biopax.org/release/biopax-level3.owl#Xref -->

    <owl:Class rdf:about="http://www.biopax.org/release/biopax-level3.owl#Xref">
        <rdfs:subClassOf rdf:resource="http://www.biopax.org/release/biopax-level3.owl#UtilityClass"/>
        <rdfs:comment rdf:datatype="&xsd;string">Definition: A reference from an instance of a class in this ontology to an object in an external resource.
Rationale: Xrefs in the future can be removed in the future in favor of explicit miram links. 
Usage: For most cases one of the subclasses of xref should be used.</rdfs:comment>
    </owl:Class>
</rdf:RDF>



<!-- Generated by the OWL API (version 3.5.0) http://owlapi.sourceforge.net -->
').
