import java.io.File

def propertyContent = new File(propsDir, 'ec_Database-version.txt').text

property 'ec_Database-version', value: '2.7.3'
