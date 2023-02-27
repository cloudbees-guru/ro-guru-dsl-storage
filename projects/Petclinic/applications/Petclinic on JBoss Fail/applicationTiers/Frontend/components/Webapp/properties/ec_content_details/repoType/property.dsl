import java.io.File

def propertyContent = new File(propsDir, 'repoType.txt').text
repoType = """$propertyContent"""
