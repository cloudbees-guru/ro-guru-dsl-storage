import java.io.File

def propertyContent = new File(propsDir, 'version.txt').text

property 'version', value: '$[petclinicVersion]'
