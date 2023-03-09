echo "Wait for it"
ectool getResources | grep "version\|resourceName" | sed "s/<[a-zA-Z\/]*>//g"