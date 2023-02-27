import java.io.File

def propertyContent = new File(propsDir, 'architecture.txt').text
architecture = """$propertyContent"""
