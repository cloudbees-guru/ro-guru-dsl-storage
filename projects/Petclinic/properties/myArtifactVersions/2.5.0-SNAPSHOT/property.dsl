import java.io.File

def propertyContent = new File(propsDir, '2.5.0-SNAPSHOT.txt').text

property '2.5.0-SNAPSHOT', value: '2.5.0-SNAPSHOT'
