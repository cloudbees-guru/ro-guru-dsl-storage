import java.io.File

def propertyContent = new File(propsDir, '3.0.2-SNAPSHOT.txt').text

property '3.0.2-SNAPSHOT', value: '3.0.2-SNAPSHOT'
