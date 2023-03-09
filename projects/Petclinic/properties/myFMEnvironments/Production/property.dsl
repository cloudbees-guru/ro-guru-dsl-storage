import java.io.File

def propertyContent = new File(propsDir, 'Production.txt').text
Production = """$propertyContent"""
