import java.io.File

def propertyContent = new File(propsDir, 'petclinicVersion.txt').text
petclinicVersion = """$propertyContent"""
