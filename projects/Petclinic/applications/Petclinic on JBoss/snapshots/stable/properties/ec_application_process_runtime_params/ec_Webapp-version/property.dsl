import java.io.File

def propertyContent = new File(propsDir, 'ec_Webapp-version.txt').text

property 'ec_Webapp-version', value: '$[petclinicVersion]'
