import java.io.File


step 'Create JBoss configuration', {
  description = 'Configure Petclinic on JBoss application and the Deploy tasks'
  command = new File(projectDir, "./procedures/Create Petclinic Release/steps/Create JBoss configuration.cmd").text
  condition = '$[deployToJBoss]'
  parallel = '1'
  projectName = 'Petclinic'
  shell = 'ectool evalDsl --dslFile'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
