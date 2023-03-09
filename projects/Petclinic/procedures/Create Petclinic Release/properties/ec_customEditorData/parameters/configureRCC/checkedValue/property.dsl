import java.io.File

def propertyContent = new File(propsDir, 'checkedValue.txt').text

property 'checkedValue', value: 'true'
