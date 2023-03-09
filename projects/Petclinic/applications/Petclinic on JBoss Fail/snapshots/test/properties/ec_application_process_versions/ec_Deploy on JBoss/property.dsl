import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy on JBoss.txt').text

property 'ec_Deploy on JBoss', value: '{"revisionId":475297,"timestamp":1642333080910,"id":"a44548e3-9a14-11ec-8817-42010a840017"}'
