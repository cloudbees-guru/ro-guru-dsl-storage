import java.io.File

def propertyContent = new File(propsDir, '3.0.3-SNAPSHOT.txt').text

property '3.0.3-SNAPSHOT', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
