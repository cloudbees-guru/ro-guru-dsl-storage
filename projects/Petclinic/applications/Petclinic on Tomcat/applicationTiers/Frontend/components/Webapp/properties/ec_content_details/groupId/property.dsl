import java.io.File

def propertyContent = new File(propsDir, 'groupId.txt').text

property 'groupId', value: 'antlr'
