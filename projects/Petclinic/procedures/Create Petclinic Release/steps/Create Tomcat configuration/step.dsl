import java.io.File


step 'Create Tomcat configuration', {
  description = 'Configure Petclinic on Tomcat application and the Deploy tasks'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Create Petclinic Release/steps/Create Tomcat configuration.cmd").text
  condition = '$[deployToTomcat]'
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '1'
  postProcessor = ''
  precondition = ''
  projectName = 'Petclinic'
  releaseMode = 'none'
  resourceName = ''
  shell = 'ectool evalDsl --dslFile'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  workingDirectory = ''
  workspaceName = ''
}
