import java.io.File

def propertyContent = new File(propsDir, 'ec_Undeploy from Tomcat.txt').text

property 'ec_Undeploy from Tomcat', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
