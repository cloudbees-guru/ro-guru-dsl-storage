import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy on JBoss.txt').text

property 'ec_Deploy on JBoss', value: '{"revisionId":475297,"timestamp":1642333080910,"id":"085a924f-cb78-11ec-921a-42010a840017"}'
