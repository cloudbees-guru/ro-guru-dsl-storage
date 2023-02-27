import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy webapp from Tomcat.txt').text

property 'ec_Undeploy webapp from Tomcat', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
