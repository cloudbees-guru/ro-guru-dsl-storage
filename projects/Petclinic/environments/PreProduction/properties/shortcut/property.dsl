import java.io.File

def propertyContent = new File(propsDir, 'shortcut.txt').text
shortcut = """$propertyContent"""
