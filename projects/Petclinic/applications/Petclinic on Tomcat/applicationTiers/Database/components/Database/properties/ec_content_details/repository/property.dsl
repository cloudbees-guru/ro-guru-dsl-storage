import java.io.File

def propertyContent = new File(propsDir, 'repository.txt').text

property 'repository', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
