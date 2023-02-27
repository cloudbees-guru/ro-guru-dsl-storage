import java.io.File

def propertyContent = new File(propsDir, 'memory_size.txt').text
memory_size = """$propertyContent"""
