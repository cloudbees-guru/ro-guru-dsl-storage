import java.io.File


step 'Create properties', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Import Petclinic versions from Nexus/steps/Create properties.groovy").text
  condition = ''
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
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''
}
