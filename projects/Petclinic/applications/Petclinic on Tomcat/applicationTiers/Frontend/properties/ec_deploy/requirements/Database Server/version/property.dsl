import java.io.File

def propertyContent = new File(propsDir, 'version.txt').text

property 'version', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
