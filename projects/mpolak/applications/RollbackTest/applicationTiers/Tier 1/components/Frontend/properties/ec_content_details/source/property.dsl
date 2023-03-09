import java.io.File

def propertyContent = new File(propsDir, 'source.txt').text

property 'source', value: '/'
