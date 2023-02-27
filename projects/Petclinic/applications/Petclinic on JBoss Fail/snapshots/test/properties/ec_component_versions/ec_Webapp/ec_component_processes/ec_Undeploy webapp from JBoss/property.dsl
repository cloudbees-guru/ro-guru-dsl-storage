import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy webapp from JBoss.txt').text

property 'ec_Undeploy webapp from JBoss', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
