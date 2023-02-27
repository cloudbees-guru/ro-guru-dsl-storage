import java.io.File

def propertyContent = new File(propsDir, 'cpu.txt').text
cpu = """$propertyContent"""
