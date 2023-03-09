import java.io.File

def propertyContent = new File(propsDir, 'artifactName.txt').text

property 'artifactName', value: 'spring-petclinic'
