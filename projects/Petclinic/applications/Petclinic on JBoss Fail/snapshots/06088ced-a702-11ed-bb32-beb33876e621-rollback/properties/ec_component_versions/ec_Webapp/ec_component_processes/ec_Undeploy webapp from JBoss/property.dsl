import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy webapp from JBoss.txt').text

property 'ec_Undeploy webapp from JBoss', value: '{"revisionId":9941,"timestamp":1675764137931,"id":"077c1978-a702-11ed-bb32-beb33876e621"}'
