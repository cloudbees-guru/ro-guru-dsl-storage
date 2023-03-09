import java.io.File


step 'Pull image', {
  description = 'Pull image from the Docker registry'
  command = new File(projectDir, "./procedures/Pull Docker image/steps/Pull image.cmd").text
  errorHandling = 'abortJobNow'
  projectName = 'Petclinic'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
