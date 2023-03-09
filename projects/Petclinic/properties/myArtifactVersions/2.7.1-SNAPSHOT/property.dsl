import java.io.File

def propertyContent = new File(propsDir, '2.7.1-SNAPSHOT.txt').text

property '2.7.1-SNAPSHOT', value: '2.7.1-SNAPSHOT'
