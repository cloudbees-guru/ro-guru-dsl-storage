import java.io.File

def propertyContent = new File(propsDir, 'versionRange.txt').text

property 'versionRange', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
