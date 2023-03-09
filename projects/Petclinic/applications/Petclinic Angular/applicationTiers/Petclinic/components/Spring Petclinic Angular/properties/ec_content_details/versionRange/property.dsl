import java.io.File

def propertyContent = new File(propsDir, 'versionRange.txt').text

property 'versionRange', value: 'latest'
