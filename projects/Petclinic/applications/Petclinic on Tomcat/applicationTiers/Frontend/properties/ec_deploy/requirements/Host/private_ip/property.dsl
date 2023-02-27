import java.io.File

def propertyContent = new File(propsDir, 'private_ip.txt').text
private_ip = """$propertyContent"""
