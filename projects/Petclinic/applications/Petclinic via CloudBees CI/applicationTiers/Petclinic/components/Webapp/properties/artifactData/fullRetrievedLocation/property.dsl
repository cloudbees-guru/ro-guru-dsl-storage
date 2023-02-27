import java.io.File

def propertyContent = new File(propsDir, 'fullRetrievedLocation.txt').text
fullRetrievedLocation = """$propertyContent"""
