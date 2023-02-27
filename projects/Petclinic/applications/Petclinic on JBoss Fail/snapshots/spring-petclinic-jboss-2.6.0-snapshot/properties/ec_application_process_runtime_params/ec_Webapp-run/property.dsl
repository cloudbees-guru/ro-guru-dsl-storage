import java.io.File

def propertyContent = new File(propsDir, 'ec_Webapp-run.txt').text

property 'ec_Webapp-run', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
