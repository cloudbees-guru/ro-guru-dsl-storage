import java.io.File

def propertyContent = new File(propsDir, 'os.txt').text
os = """$propertyContent"""
