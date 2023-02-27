import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy webapp on Tomcat.txt').text

property 'ec_Deploy webapp on Tomcat', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
