import java.io.File

def propertyContent = new File(propsDir, 'Integration.txt').text
Integration = """$propertyContent"""
