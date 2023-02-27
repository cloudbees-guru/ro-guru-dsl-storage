import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy from MySQL via Ansible Tower.txt').text

property 'ec_Undeploy from MySQL via Ansible Tower', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
