import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy from MySQL.txt').text

property 'ec_Undeploy from MySQL', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
