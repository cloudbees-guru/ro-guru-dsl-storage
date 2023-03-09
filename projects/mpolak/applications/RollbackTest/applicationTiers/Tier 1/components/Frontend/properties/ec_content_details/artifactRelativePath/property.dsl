import java.io.File

def propertyContent = new File(propsDir, 'artifactRelativePath.txt').text
artifactRelativePath = """$propertyContent"""
