import java.io.File

def propertyContent = new File(propsDir, 'retrievedLocation.txt').text
retrievedLocation = """$propertyContent"""
