import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy from JBoss.txt').text

property 'ec_Undeploy from JBoss', value: '{"revisionId":3559,"timestamp":1673268753732,"id":"5d9d1d8b-a622-11ed-b4b3-beb33876e621"}'
