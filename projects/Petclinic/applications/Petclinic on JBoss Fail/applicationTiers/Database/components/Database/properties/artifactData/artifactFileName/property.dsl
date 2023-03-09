import java.io.File

def propertyContent = new File(propsDir, 'artifactFileName.txt').text

property 'artifactFileName', value: 'spring-petclinic-3.0.0-SNAPSHOT.jar'
