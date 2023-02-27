import java.io.File

def propertyContent = new File(propsDir, 'artifactFileName.txt').text

property 'artifactFileName', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
