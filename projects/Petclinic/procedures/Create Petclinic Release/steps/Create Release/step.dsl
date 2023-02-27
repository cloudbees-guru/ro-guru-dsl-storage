import java.io.File


step 'Create Release', {
  description = 'Create the main release configuration with stages and tasks'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Create Petclinic Release/steps/Create Release.cmd").text
  condition = ''
  errorHandling = 'abortProcedureNow'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
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
