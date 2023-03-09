import java.io.File

def propertyContent = new File(propsDir, 'ec_appProcessId.txt').text
ec_appProcessId = """$propertyContent"""
