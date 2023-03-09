import java.io.File

def propertyContent = new File(propsDir, 'version.txt').text

property 'version', value: '3.0.4-SNAPSHOT'
