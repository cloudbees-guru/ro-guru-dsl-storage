import java.io.File

def propertyContent = new File(propsDir, 'ec_Database-version.txt').text

property 'ec_Database-version', value: '$[/projects/Petclinic/applications/Petclinic on JBoss/components/Database/ec_content_details/version]'
