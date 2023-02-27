import java.io.File

def propertyContent = new File(propsDir, 'artifactId.txt').text

property 'artifactId', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
