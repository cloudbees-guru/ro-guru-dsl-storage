import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy from JBoss.txt').text

property 'ec_Undeploy from JBoss', value: '{"revisionId":571426,"timestamp":1651594491727,"id":"085c3f47-cb78-11ec-921a-42010a840017"}'
