import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy webapp via Ansible Tower.txt').text

property 'ec_Undeploy webapp via Ansible Tower', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}