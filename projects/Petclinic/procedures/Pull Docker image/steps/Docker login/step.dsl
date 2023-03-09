import java.io.File


step 'Docker login', {
  description = 'Login to the Docker registry using the given credentials'
  command = new File(projectDir, "./procedures/Pull Docker image/steps/Docker login.cmd").text
  condition = '$[privateRegistry]'
  errorHandling = 'abortJobNow'
  projectName = 'Petclinic'
  timeLimit = '0'
  timeLimitUnits = 'seconds'

  attachParameter {
    formalParameterName = '/projects/Petclinic/procedures/Pull Docker image/formalParameters/credentials'
  }
}
