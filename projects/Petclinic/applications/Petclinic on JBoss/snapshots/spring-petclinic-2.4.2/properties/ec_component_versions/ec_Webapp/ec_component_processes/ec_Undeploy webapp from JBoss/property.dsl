import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy webapp from JBoss.txt').text

property 'ec_Undeploy webapp from JBoss', value: '{"revisionId":null,"timestamp":0,"id":"78b2a1e0-901c-11ed-a576-169d6631aa63"}'
