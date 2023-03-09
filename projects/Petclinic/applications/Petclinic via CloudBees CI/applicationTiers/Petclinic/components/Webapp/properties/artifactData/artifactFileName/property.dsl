import java.io.File

def propertyContent = new File(propsDir, 'artifactFileName.txt').text

property 'artifactFileName', value: 'spring-petclinic-2.4.5.jar'
