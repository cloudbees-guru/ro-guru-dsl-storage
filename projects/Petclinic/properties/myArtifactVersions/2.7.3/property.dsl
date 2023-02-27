import java.io.File

def propertyContent = new File(propsDir, '2.7.3.txt').text

property '2.7.3', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
