#!/bin/bash

SET=1
if [ $# -eq 1 ]
  then
    SET=$1
fi

chmod +x ./test_trill_std.sh
./test_std.sh $SET
chmod +x ./test_trill_inc.sh
./test_inc.sh $SET
