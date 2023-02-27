import java.io.File


step 'Docker login', {
  description = 'Login to the Docker registry using the given credentials'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Pull Docker image/steps/Docker login.cmd").text
  condition = '$[privateRegistry]'
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

  attachParameter {
    formalParameterName = '/projects/Petclinic/procedures/Pull Docker image/formalParameters/credentials'
  }
}
