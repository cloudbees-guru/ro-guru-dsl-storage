import java.io.File

def propertyContent = new File(propsDir, 'overwrite.txt').text

property 'overwrite', value: '0'
