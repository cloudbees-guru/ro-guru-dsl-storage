import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy from JBoss.txt').text

property 'ec_Undeploy from JBoss', value: '{"revisionId":9941,"timestamp":1675764137931,"id":"07819809-a702-11ed-bb32-beb33876e621"}'
