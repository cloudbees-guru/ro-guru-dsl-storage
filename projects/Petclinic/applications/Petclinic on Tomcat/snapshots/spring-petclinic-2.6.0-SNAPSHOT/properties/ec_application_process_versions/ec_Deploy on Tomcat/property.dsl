import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy on Tomcat.txt').text

property 'ec_Deploy on Tomcat', value: '{"revisionId":468739,"timestamp":1639471575788,"id":"326bb976-72f4-11ec-a222-42010a840017"}'
