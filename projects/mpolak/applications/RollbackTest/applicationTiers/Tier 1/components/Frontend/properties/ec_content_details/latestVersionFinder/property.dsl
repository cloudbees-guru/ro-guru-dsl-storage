import java.io.File

def propertyContent = new File(propsDir, 'latestVersionFinder.txt').text
latestVersionFinder = """$propertyContent"""
