:-use_module(library(trill_inc)).

:- trill.


/** <examples>

?- instanceOf(complementOf(fly),pingu,E).
?- prob_instanceOf(complementOf(fly),pingu,Prob).

*/

% Axioms 
classAssertion(penguin,pingu).
subClassOf(penguin,complementOf(fly)).
subClassOf(penguin,bird).
subClassOf(bird,fly).

annotationAssertion('disponte:probability',subClassOf(bird,fly),literal('0.9')).
annotationAssertion('disponte:probability',subClassOf(penguin,complementOf(fly)),literal('0.9')).