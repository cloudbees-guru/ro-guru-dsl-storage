
procedure 'Check if Petclinic is deployed on JBoss', {
  description = 'List deployed applications in Tomcat and check if Petclinic is one of them'
  projectName = 'Petclinic'
  timeLimit = '0'

  formalParameter 'jbossConfiguration', {
    description = 'Which JBoss/Wildfly configuration to use'
    label = 'JBoss Configuration'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'jbossDeployment', {
    description = 'Deployment name in JBoss / Wildfly'
    label = 'Deployment name'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }
}
