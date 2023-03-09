import java.io.File

def propertyContent = new File(propsDir, 'version.txt').text

property 'version', value: '2.7.3'
