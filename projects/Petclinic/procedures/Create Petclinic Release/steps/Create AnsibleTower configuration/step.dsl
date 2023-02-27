import java.io.File


step 'Create AnsibleTower configuration', {
  description = 'Configure Petclinic on JBoss application and the Deploy tasks'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Create Petclinic Release/steps/Create AnsibleTower configuration.cmd").text
  condition = '$[deployViaAnsibleTower]'
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
