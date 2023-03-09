import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy from Tomcat.txt').text

property 'ec_Undeploy from Tomcat', value: '{"revisionId":467106,"timestamp":1639050484595,"id":"24c3b960-5c48-11ec-84e1-42010a840017"}'
