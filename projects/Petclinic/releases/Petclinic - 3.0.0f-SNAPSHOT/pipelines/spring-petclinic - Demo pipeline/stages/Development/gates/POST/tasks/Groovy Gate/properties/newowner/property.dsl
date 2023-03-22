import java.io.File

def propertyContent = new File(propsDir, 'newowner.txt').text

property 'newowner', value: """$propertyContent""", {
  suppressValueTracking = '1'
}
