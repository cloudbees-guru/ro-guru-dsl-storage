import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy from JBoss.txt').text

property 'ec_Undeploy from JBoss', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
