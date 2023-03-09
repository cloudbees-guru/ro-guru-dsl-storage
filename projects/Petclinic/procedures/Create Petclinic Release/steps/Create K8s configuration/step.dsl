import java.io.File


step 'Create K8s configuration', {
  description = 'Configure Petclinic on K8s application and the Deploy tasks'
  command = new File(projectDir, "./procedures/Create Petclinic Release/steps/Create K8s configuration.cmd").text
  condition = '$[deployToK8s]'
  parallel = '1'
  projectName = 'Petclinic'
  shell = 'ectool evalDsl --dslFile'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
