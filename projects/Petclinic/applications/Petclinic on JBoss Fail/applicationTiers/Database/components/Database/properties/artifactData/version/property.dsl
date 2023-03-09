import java.io.File

def propertyContent = new File(propsDir, 'version.txt').text

property 'version', value: '3.0.0-SNAPSHOT'
