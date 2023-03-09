import java.io.File

def propertyContent = new File(propsDir, 'classifier.txt').text
classifier = """$propertyContent"""
