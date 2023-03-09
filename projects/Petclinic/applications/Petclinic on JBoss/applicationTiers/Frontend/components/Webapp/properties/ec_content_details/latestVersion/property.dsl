import java.io.File

def propertyContent = new File(propsDir, 'latestVersion.txt').text
latestVersion = """$propertyContent"""
