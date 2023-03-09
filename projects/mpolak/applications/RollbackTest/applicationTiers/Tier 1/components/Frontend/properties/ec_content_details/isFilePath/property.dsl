import java.io.File

def propertyContent = new File(propsDir, 'isFilePath.txt').text
isFilePath = """$propertyContent"""
