import java.io.File


step 'Create Tomcat configuration', {
  description = 'Configure Petclinic on Tomcat application and the Deploy tasks'
  command = new File(projectDir, "./procedures/Create Petclinic Release/steps/Create Tomcat configuration.cmd").text
  condition = '$[deployToTomcat]'
  parallel = '1'
  projectName = 'Petclinic'
  shell = 'ectool evalDsl --dslFile'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
