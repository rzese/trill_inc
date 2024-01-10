:-use_module(library(trill_inc)).

:- trill.

/** <examples>

% IAR
?- prob_instanceOf(person,a,Prob).
% AR
?- prob_instanceOf(univEmpl,a,Prob).
% Brave
?- prob_instanceOf(phd,a,Prob).
% false
?- prob_instanceOf(lecturer,a,Prob).

*/

classAssertion(professor,a).
classAssertion(tutor,a).
classAssertion(person,a).
subClassOf(intersectionOf([professor,tutor]),lecturer).
subClassOf(intersectionOf([person,professor]),phd).
subClassOf(unionOf([professor,tutor]),univEmpl).
subClassOf(professor,person).
subClassOf(tutor,person).
disjointClasses([professor,tutor]).
annotationAssertion('disponte:probability',classAssertion(professor,a),literal('0.2')).
annotationAssertion('disponte:probability',classAssertion(tutor,a),literal('0.8')).
annotationAssertion('disponte:probability',classAssertion(person,a),literal('0.9')).
%annotationAssertion('disponte:probability',subClassOf(intersectionOf([pr,phd]),sem),literal('1.0')).
%annotationAssertion('disponte:probability',subClassOf(unionOf([pr,phd]),sem),literal('1.0')).
%annotationAssertion('disponte:probability',disjointClasses([pr,phd]),literal('1.0')).