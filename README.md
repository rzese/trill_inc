TRILL INC
=========

TRILL INC (temporary name) is an extension of the reasoner TRILL (https://github.com/rzese/trill) able to compute probability of queries from inconsistent probabilistic knowledge bases.

In the source code, comments starting with "COMMENT" highlight the changes to the original TRILL.

Requirements
------------

- SWI Prolog v. >= 8 - http://www.swi-prolog.org/
- Python v. >= 3.6

NOTE: while SWI-Prolog is mandatory to run the system, Python is only used to collect the final results of the test in the folder `paper-test`. To run the system as described i the Section "Example of use" below it is not necessary to have Python installed.

Installation
------------
It can be installed with `pack_install/1`. To make comparison with the standard version of TRILL, it is necessary to install it using the commands below:

    $ swipl
    ?- pack_install(trill).

To install only our system, in this folder run the commands:

    $ swipl
    ?- pack_install('trill_inc-1.5.zip').

Requirements
-------------
It requires the packs

 * `bddem` https://github.com/friguzzi/bddem
 
 They are installed automatically when installing `trill` or `trill_inc`, or can be installed manually as

    $ swipl
    ?- pack_install(bddem).

`bddem` uses a foreign library and contains the library binaries for 32 and 64 bits Linux and 64 bits Windows. If you want to recompile the foreign library you can use

    ?- pack_rebuild(bdeem).

On 32 and 64 bits Linux this should work out of the box. On 64 bits Windows the library must be rebuilt by hand, see the pack page https://github.com/friguzzi/bddem


Example of use
---------------

    $ swipl
    ?- [library(examples_inc/penguin)].
    ?- prob_instanceOf(complementOf(fly),pingu,Prob).

Testing the installation
------------------------

    $ swipl
    ?- [library(trill_inc_test/test)].
    ?- test.

Running the test of the paper
-----------------------------
To run both `trill` and `trill_inc`

    $ ./test_trill.sh

To run only `trill`

    $ ./test_trill_std.sh

To run only `trill inc`, the system presented in the paper

    $ ./test_trill_inc.sh

If you also have BUNDLE and you would like to test it, to run both `BUNDLE` and `BUNDLE inc`

    $ ./test_bundle.sh

To run only `BUNDLE`

    $ ./test_bundle_std.sh

To run only `BUNDLE inc`, the system presented in the paper

    $ ./test_bundle_inc.sh

To run all the systems above

    $ ./test_both.sh
   
All the files `test_*.sh` can take as input one argument, which represents the setting to test.
Therefore, to run the experiment under setting S#1, use the command

    $ ./test_both.sh 1

or simply

    $ ./test_both.sh

To run setting S#2

    $ ./test_both.sh 2

To run setting S#3

    $ ./test_both.sh 3
	
To run setting S#4

    $ ./test_both.sh 4


