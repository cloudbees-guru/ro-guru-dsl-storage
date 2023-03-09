import java.io.File

def propertyContent = new File(propsDir, 'subservice.txt').text
subservice = """$propertyContent"""
