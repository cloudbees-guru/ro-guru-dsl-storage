import java.io.File


step 'List applications', {
  alwaysRun = '1'
  command = new File(projectDir, "./procedures/Check if Petclinic is deployed on Tomcat/steps/List applications.cmd").text
  errorHandling = 'ignore'
  projectName = 'Petclinic'
  resourceName = 'tomcat-vm.c.cloudbees-sa-emea-demo.internal'
  timeLimit = '0'
  timeLimitUnits = 'seconds'

  attachParameter {
    formalParameterName = '/projects/Petclinic/procedures/Check if Petclinic is deployed on Tomcat/formalParameters/tomcatCredentials'
  }
}
