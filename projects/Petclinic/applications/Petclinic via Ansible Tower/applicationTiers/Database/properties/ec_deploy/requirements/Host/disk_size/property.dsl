import java.io.File

def propertyContent = new File(propsDir, 'disk_size.txt').text
disk_size = """$propertyContent"""
