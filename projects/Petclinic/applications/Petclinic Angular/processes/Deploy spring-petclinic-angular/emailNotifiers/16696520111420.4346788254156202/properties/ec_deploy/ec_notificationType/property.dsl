import java.io.File

def propertyContent = new File(propsDir, 'ec_notificationType.txt').text
ec_notificationType = """$propertyContent"""
