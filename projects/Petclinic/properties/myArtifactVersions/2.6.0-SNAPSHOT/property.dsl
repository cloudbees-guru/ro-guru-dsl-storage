import java.io.File

def propertyContent = new File(propsDir, '2.6.0-SNAPSHOT.txt').text

property '2.6.0-SNAPSHOT', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
