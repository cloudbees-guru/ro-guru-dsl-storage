tomcatPassword=`ectool getFullCredential "$[tomcatCredentials]" --value password`
ectool setProperty '/myJob/applicationExists' '1' > /dev/null
curl -v -u tomcat:${tomcatPassword} http://127.0.0.1:8080/manager/text/list 2>&1 | grep -A100 "^OK" | grep "^/$[tomcatContext]" > /dev/null

#Check that the application exists
if [ $? -eq 0 ] ; then
	echo "Application with context $[tomcatContext] detected on Tomcat"
    ectool setProperty '/myJob/applicationExists' '0' > /dev/null
    return 0
else
	echo "Application with context $[tomcatContext] not found"
fi