import java.io.File

def propertyContent = new File(propsDir, 'ec_enforceDependencies.txt').text
ec_enforceDependencies = """$propertyContent"""
