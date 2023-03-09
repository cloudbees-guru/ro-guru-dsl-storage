import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy from JBoss.txt').text

property 'ec_Undeploy from JBoss', value: '{"revisionId":469300,"timestamp":1639609226499,"id":"a44d376b-9a14-11ec-8817-42010a840017"}'
