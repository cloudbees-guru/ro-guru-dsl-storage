import java.io.File

def propertyContent = new File(propsDir, '2.2.0.STANDALONE-SNAPSHOT.txt').text

property '2.2.0.STANDALONE-SNAPSHOT', value: '2.2.0.STANDALONE-SNAPSHOT'
