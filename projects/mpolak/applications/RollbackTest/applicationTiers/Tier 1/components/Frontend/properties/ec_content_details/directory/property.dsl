import java.io.File

def propertyContent = new File(propsDir, 'directory.txt').text
directory = """$propertyContent"""
