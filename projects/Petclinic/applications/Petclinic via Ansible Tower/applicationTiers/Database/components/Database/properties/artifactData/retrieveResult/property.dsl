import java.io.File

def propertyContent = new File(propsDir, 'retrieveResult.txt').text
retrieveResult = """$propertyContent"""
