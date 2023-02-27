
procedure 'Check if Petclinic is deployed on JBoss', {
  description = 'List deployed applications in Tomcat and check if Petclinic is one of them'
  jobNameTemplate = ''
  projectName = 'Petclinic'
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'jbossConfiguration', {
    description = 'Which JBoss/Wildfly configuration to use'
    expansionDeferred = '0'
    label = 'JBoss Configuration'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'jbossDeployment', {
    description = 'Deployment name in JBoss / Wildfly'
    expansionDeferred = '0'
    label = 'Deployment name'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }
}
