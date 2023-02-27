import java.io.File


step 'Create K8s configuration', {
  description = 'Configure Petclinic on K8s application and the Deploy tasks'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Create Petclinic Release/steps/Create K8s configuration.cmd").text
  condition = '$[deployToK8s]'
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
