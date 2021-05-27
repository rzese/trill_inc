

:- format(user_error,
	  'trill_inc test suite.  To run all tests run ?- test.~n~n', []).
test:-
  use_module(library(trill_inc_test/test_trill_inc)),
  test_trill_inc.
