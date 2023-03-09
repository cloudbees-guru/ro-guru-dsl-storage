import java.io.File


step 'Create properties', {
  command = new File(projectDir, "./procedures/Import Petclinic versions from Nexus/steps/Create properties.groovy").text
  projectName = 'Petclinic'
  shell = 'ec-groovy'
  timeLimit = '0'
}
