import java.io.File

def propertyContent = new File(propsDir, 'destination.txt').text

property 'destination', value: ''
