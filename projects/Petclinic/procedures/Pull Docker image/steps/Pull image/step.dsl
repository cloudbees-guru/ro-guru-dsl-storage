import java.io.File


step 'Pull image', {
  description = 'Pull image from the Docker registry'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Pull Docker image/steps/Pull image.cmd").text
  condition = ''
  errorHandling = 'abortJobNow'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  projectName = 'Petclinic'
  releaseMode = 'none'
  resourceName = ''
  shell = ''
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  workingDirectory = ''
  workspaceName = ''
}
