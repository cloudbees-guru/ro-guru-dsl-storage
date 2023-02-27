import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy webapp on JBoss.txt').text

property 'ec_Deploy webapp on JBoss', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
