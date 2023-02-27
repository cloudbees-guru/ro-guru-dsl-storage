import java.io.File

def propertyContent = new File(propsDir, 'os_type.txt').text
os_type = """$propertyContent"""
