import java.io.File


step 'List applications', {
  description = ''
  alwaysRun = '1'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Check if Petclinic is deployed on Tomcat/steps/List applications.cmd").text
  condition = ''
  errorHandling = 'ignore'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  projectName = 'Petclinic'
  releaseMode = 'none'
  resourceName = 'tomcat-vm.c.cloudbees-sa-emea-demo.internal'
  shell = ''
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  workingDirectory = ''
  workspaceName = ''

  attachParameter {
    formalParameterName = '/projects/Petclinic/procedures/Check if Petclinic is deployed on Tomcat/formalParameters/tomcatCredentials'
  }
}
