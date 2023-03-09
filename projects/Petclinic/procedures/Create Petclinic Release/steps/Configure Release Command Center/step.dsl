import java.io.File


step 'Configure Release Command Center', {
  description = 'Configures the Release Command Center dashboards with datasources'
  command = new File(projectDir, "./procedures/Create Petclinic Release/steps/Configure Release Command Center.groovy").text
  condition = '$[configureRCC]'
  projectName = 'Petclinic'
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
