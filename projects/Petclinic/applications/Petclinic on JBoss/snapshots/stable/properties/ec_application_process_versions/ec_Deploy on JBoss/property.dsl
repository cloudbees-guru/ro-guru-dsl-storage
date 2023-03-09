import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy on JBoss.txt').text

property 'ec_Deploy on JBoss', value: '{"revisionId":3559,"timestamp":1673268753732,"id":"5d999adb-a622-11ed-b4b3-beb33876e621"}'
