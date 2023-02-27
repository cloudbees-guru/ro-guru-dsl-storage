import java.io.File

def propertyContent = new File(propsDir, 'extension.txt').text
extension = """$propertyContent"""
