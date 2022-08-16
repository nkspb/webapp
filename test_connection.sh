#!/bin/bash

STATUS_CODE=$(curl -LI http://localhost:9889 -o /dev/null -w '%{http_code}\n' -s)

if [ $STATUS_CODE -eq 200 ]
  then
    echo "##teamcity[<connection_test_result> 'Connection to webapp on http was successful']"
  else
   echo "##teamcity[<connection_test_result> 'Connection to webapp on http failed']"
fi
