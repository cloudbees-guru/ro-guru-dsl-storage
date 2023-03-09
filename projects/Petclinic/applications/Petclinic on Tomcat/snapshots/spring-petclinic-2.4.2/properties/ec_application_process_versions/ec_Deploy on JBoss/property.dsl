import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy on JBoss.txt').text

property 'ec_Deploy on JBoss', value: '{"revisionId":466131,"timestamp":1638824182730,"id":"26883004-57b1-11ec-91ab-42010a840017"}'
