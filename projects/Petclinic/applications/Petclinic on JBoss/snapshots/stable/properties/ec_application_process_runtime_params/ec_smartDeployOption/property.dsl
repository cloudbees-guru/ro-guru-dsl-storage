import java.io.File

def propertyContent = new File(propsDir, 'ec_smartDeployOption.txt').text
ec_smartDeployOption = """$propertyContent"""
