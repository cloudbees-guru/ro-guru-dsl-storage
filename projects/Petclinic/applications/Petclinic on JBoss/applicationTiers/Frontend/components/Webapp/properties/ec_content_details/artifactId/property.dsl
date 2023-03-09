import java.io.File

def propertyContent = new File(propsDir, 'artifactId.txt').text

property 'artifactId', value: 'spring-petclinic'
