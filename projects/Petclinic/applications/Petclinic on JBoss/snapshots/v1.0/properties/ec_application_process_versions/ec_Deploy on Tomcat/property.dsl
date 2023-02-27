import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy on Tomcat.txt').text

property 'ec_Deploy on Tomcat', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
