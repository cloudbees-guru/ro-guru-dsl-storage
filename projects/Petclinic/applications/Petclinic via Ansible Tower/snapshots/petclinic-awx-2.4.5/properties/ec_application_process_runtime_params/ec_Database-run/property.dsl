import java.io.File

def propertyContent = new File(propsDir, 'ec_Database-run.txt').text

property 'ec_Database-run', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
