import java.io.File

def propertyContent = new File(propsDir, 'ec_rollbackOnly.txt').text
ec_rollbackOnly = """$propertyContent"""
