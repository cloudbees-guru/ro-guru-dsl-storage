import java.io.File


step 'Configure Release Command Center', {
  description = 'Configures the Release Command Center dashboards with datasources'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Create Petclinic Release/steps/Configure Release Command Center.groovy").text
  condition = '$[configureRCC]'
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  projectName = 'Petclinic'
  releaseMode = 'none'
  resourceName = ''
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  workingDirectory = ''
  workspaceName = ''
}
