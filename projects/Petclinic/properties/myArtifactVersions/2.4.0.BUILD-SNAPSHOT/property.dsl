import java.io.File

def propertyContent = new File(propsDir, '2.4.0.BUILD-SNAPSHOT.txt').text

property '2.4.0.BUILD-SNAPSHOT', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
