import java.io.File

def propertyContent = new File(propsDir, 'ec_Version.txt').text
ec_Version = """$propertyContent"""
