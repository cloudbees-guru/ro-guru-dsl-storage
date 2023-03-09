import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy on JBoss.txt').text

property 'ec_Deploy on JBoss', value: '{"revisionId":9941,"timestamp":1675764137931,"id":"077d2af9-a702-11ed-bb32-beb33876e621"}'
