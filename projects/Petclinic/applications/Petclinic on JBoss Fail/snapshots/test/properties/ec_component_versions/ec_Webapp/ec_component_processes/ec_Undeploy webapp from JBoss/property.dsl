import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy webapp from JBoss.txt').text

property 'ec_Undeploy webapp from JBoss', value: '{"revisionId":474986,"timestamp":1642155222136,"id":"a4423b92-9a14-11ec-8817-42010a840017"}'
