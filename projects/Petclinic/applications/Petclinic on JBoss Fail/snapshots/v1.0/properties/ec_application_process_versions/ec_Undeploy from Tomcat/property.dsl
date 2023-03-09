import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy from Tomcat.txt').text

property 'ec_Undeploy from Tomcat', value: '{"revisionId":466131,"timestamp":1638824182730,"id":"1543b789-57b1-11ec-998a-42010a840017"}'
