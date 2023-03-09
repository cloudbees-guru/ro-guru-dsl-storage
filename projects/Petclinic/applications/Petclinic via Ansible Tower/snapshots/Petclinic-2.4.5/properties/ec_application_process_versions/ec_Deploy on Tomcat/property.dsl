import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy on Tomcat.txt').text

property 'ec_Deploy on Tomcat', value: '{"revisionId":468454,"timestamp":1639421774727,"id":"24b22cae-5c48-11ec-84e1-42010a840017"}'
