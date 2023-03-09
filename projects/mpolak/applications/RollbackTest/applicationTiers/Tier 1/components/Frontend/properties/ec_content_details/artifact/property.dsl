import java.io.File

def propertyContent = new File(propsDir, 'artifact.txt').text

property 'artifact', value: 'test'
