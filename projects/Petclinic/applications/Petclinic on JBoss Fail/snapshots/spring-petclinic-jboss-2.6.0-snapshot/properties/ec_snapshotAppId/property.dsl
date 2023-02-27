import java.io.File

def propertyContent = new File(propsDir, 'ec_snapshotAppId.txt').text
ec_snapshotAppId = """$propertyContent"""
