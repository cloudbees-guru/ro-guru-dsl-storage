import java.io.File

def propertyContent = new File(propsDir, 'rolloutkey.txt').text
rolloutkey = """$propertyContent"""
