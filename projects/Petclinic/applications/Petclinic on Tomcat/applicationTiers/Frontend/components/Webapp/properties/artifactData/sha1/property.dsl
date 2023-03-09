import java.io.File

def propertyContent = new File(propsDir, 'sha1.txt').text
sha1 = """$propertyContent"""
