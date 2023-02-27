import java.io.File

def propertyContent = new File(propsDir, 'image.txt').text
image = """$propertyContent"""
