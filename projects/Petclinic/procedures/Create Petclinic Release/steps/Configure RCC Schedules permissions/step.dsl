import java.io.File


step 'Configure RCC Schedules permissions', {
  command = new File(projectDir, "./procedures/Create Petclinic Release/steps/Configure RCC Schedules permissions.groovy").text
  condition = '$[configureRCC]'
  projectName = 'Petclinic'
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
