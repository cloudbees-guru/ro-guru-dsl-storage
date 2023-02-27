
procedure 'Check if Petclinic is deployed on Tomcat', {
  description = 'List deployed applications in Tomcat and check if Petclinic is one of them'
  jobNameTemplate = ''
  projectName = 'Petclinic'
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'tomcatContext', {
    description = 'Provide the context in which the application is running'
    expansionDeferred = '0'
    label = 'Tomcat Context'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'tomcatCredentials', {
    description = 'Provide credentials to connect to Tomcat'
    expansionDeferred = '0'
    label = 'Tomcat Credentials'
    orderIndex = '2'
    required = '1'
    type = 'credential'
  }
}
