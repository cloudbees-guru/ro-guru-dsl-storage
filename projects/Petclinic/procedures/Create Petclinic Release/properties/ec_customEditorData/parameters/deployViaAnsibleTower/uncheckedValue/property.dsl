import java.io.File

def propertyContent = new File(propsDir, 'uncheckedValue.txt').text

property 'uncheckedValue', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
