import java.io.File

def propertyContent = new File(propsDir, 'ec_deployed.txt').text
ec_deployed = """$propertyContent"""
