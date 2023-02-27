import java.io.File

def propertyContent = new File(propsDir, 'ec_Database-version.txt').text

property 'ec_Database-version', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
