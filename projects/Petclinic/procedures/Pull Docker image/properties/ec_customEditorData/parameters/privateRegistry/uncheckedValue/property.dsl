import java.io.File

def propertyContent = new File(propsDir, 'uncheckedValue.txt').text

property 'uncheckedValue', value: 'false'
