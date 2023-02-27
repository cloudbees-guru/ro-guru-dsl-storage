import java.io.File

def propertyContent = new File(propsDir, 'ec_artifactName.txt').text
ec_artifactName = """$propertyContent"""
