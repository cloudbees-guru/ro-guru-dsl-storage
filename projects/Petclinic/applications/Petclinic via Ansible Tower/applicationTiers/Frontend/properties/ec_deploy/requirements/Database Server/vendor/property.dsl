import java.io.File

def propertyContent = new File(propsDir, 'vendor.txt').text
vendor = """$propertyContent"""
