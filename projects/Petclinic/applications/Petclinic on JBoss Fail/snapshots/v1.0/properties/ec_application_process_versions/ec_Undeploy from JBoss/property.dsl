import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy from JBoss.txt').text

property 'ec_Undeploy from JBoss', value: '{"revisionId":null,"timestamp":0,"id":"7b42c213-901c-11ed-a576-169d6631aa63"}'
