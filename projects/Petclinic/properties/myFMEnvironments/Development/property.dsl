import java.io.File

def propertyContent = new File(propsDir, 'Development.txt').text
Development = """$propertyContent"""
