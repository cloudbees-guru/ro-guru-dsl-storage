import java.io.File

def propertyContent = new File(propsDir, 'jobCounter.txt').text

property 'jobCounter', value: """$propertyContent""", {
  expandable = '1'
  suppressValueTracking = '1'
}
