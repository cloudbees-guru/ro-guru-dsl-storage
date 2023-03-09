import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy from JBoss.txt').text

property 'ec_Undeploy from JBoss', value: '{"revisionId":null,"timestamp":0,"id":"78b78331-901c-11ed-a576-169d6631aa63"}'
