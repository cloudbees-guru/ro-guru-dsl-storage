import java.io.File

def propertyContent = new File(propsDir, '2.4.2.txt').text

property '2.4.2', value: '2.4.2'
