import java.io.File

def propertyContent = new File(propsDir, 'num_cpus.txt').text
num_cpus = """$propertyContent"""
