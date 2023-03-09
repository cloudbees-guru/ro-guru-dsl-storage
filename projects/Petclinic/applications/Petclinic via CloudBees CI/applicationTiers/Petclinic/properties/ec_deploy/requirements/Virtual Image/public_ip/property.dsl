import java.io.File

def propertyContent = new File(propsDir, 'public_ip.txt').text
public_ip = """$propertyContent"""
