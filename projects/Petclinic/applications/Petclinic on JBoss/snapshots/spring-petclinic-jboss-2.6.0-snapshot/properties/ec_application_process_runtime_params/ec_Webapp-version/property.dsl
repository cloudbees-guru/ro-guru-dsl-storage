import java.io.File

def propertyContent = new File(propsDir, 'ec_Webapp-version.txt').text

property 'ec_Webapp-version', value: '$[/projects/Petclinic/applications/Petclinic on JBoss/components/Webapp/ec_content_details/version]'
