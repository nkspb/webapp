REPO_MD5=$(curl -sL https://raw.githubusercontent.com/nkspb/webapp/main/html/index.html | md5sum | cut -d ' ' -f 1)
LOCAL_MD5=$(curl -sL http://localhost:9888/index.html | md5sum | cut -d ' ' -f 1)

if [ $REPO_MD5 = $LOCAL_MD5 ]
  then
    echo "##teamcity[message text='md5 check succeeded' status='NORMAL']"
  else
    echo "##teamcity[message text='md5 check failed' errorDetails='md5 of repo and local index.html are different' status='ERROR']"
fi
