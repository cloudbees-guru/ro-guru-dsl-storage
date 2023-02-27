import java.io.File

def propertyContent = new File(propsDir, 'ec_Deploy on MySQL.txt').text

property 'ec_Deploy on MySQL', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
