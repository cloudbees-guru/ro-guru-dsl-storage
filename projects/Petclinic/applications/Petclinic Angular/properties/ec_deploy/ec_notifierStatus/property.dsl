import java.io.File

def propertyContent = new File(propsDir, 'ec_notifierStatus.txt').text

property 'ec_notifierStatus', value: """$propertyContent""", {
  description = 'Petclinic application for Feature Management demo'
}
