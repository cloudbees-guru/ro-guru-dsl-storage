import java.io.File

def propertyContent = new File(propsDir, '2.7.3.txt').text

property '2.7.3', value: '2.7.3'
