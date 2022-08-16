#!/bin/bash

STATUS_CODE=$(curl -LI http://localhost -o /dev/null -w '%{http_code}\n' -s)

if [ $STATUS_CODE -eq 200 ]
  then
    echo "##teamcity[<result> 'success']"
  else
   echo "##teamcity[<result> 'failed']"
fi
