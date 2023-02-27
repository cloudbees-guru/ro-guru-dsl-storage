import java.io.File

def propertyContent = new File(propsDir, 'private_subnet.txt').text
private_subnet = """$propertyContent"""
