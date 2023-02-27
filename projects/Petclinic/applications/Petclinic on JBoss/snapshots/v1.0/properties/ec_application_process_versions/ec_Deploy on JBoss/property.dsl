import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy on JBoss.txt').text

property 'ec_Deploy on JBoss', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
