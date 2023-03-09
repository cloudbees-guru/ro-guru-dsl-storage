import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy on Tomcat.txt').text

property 'ec_Deploy on Tomcat', value: '{"revisionId":466221,"timestamp":1638828463515,"id":"15300901-57b1-11ec-998a-42010a840017"}'
