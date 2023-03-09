import java.io.File

def propertyContent = new File(propsDir, 'ec_stageArtifacts.txt').text
ec_stageArtifacts = """$propertyContent"""
