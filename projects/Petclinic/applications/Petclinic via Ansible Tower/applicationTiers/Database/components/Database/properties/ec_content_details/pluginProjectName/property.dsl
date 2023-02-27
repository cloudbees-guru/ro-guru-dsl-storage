import java.io.File

def propertyContent = new File(propsDir, 'pluginProjectName.txt').text

property 'pluginProjectName', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
