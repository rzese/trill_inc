:-use_module(library(trill_inc)).

:- trill.

/** <examples>

?- instanceOf(sem,a,E).
?- prob_instanceOf(sem,a,Prob).
?- instanceOf(univEmpl,a,E).
?- prob_instanceOf(univEmpl,a,Prob).

*/

classAssertion(pr,a).
classAssertion(phd,a).
subClassOf(intersectionOf([pr,phd]),sem).
subClassOf(unionOf([pr,phd]),univEmpl).
disjointClasses([pr,phd]).
annotationAssertion('disponte:probability',classAssertion(pr,a),literal('0.2')).
annotationAssertion('disponte:probability',classAssertion(phd,a),literal('0.8')).
%annotationAssertion('disponte:probability',subClassOf(intersectionOf([pr,phd]),sem),literal('1.0')).
%annotationAssertion('disponte:probability',subClassOf(unionOf([pr,phd]),sem),literal('1.0')).
%annotationAssertion('disponte:probability',disjointClasses([pr,phd]),literal('1.0')).