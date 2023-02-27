import java.io.File

def propertyContent = new File(propsDir, 'artifactName.txt').text

property 'artifactName', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
