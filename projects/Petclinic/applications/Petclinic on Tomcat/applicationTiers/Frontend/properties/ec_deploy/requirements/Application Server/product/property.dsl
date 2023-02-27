import java.io.File

def propertyContent = new File(propsDir, 'product.txt').text
product = """$propertyContent"""
