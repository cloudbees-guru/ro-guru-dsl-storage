import java.io.File

def propertyContent = new File(propsDir, 'destination.txt').text

property 'destination', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '0'
}
