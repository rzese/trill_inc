:-use_module(library(trill_inc)).

:- trill.

/** <examples>

% IAR
?- prob_instanceOf(person,a,Prob).
% AR
?- prob_instanceOf(univEmpl,a,Prob).
% Brave
?- prob_instanceOf(dott,a,Prob).
% false
?- prob_instanceOf(sem,a,Prob).

*/

classAssertion(pr,a).
classAssertion(phd,a).
classAssertion(person,a).
subClassOf(intersectionOf([pr,phd]),sem).
subClassOf(intersectionOf([person,phd]),dott).
subClassOf(unionOf([pr,phd]),univEmpl).
disjointClasses([pr,phd]).
annotationAssertion('disponte:probability',classAssertion(pr,a),literal('0.2')).
annotationAssertion('disponte:probability',classAssertion(phd,a),literal('0.8')).
annotationAssertion('disponte:probability',classAssertion(person,a),literal('0.9')).
%annotationAssertion('disponte:probability',subClassOf(intersectionOf([pr,phd]),sem),literal('1.0')).
%annotationAssertion('disponte:probability',subClassOf(unionOf([pr,phd]),sem),literal('1.0')).
%annotationAssertion('disponte:probability',disjointClasses([pr,phd]),literal('1.0')).