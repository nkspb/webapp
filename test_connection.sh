STATUS_CODE=$(curl -LI http://localhost:9889 -o /dev/null -w '%{http_code}\n' -s)

if [ $STATUS_CODE -eq 200 ]
  then
    echo "##teamcity[message text='Connection succeeded' status='NORMAL']"
  else
    echo "##teamcity[message text='Connection failed' errorDetails='Connection to webapp on http failed' status='ERROR']"
fi
