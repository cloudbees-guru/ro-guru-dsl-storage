
procedure 'Check if Petclinic is deployed on Tomcat', {
  description = 'List deployed applications in Tomcat and check if Petclinic is one of them'
  projectName = 'Petclinic'
  timeLimit = '0'

  formalParameter 'tomcatContext', {
    description = 'Provide the context in which the application is running'
    label = 'Tomcat Context'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'tomcatCredentials', {
    description = 'Provide credentials to connect to Tomcat'
    label = 'Tomcat Credentials'
    orderIndex = '2'
    required = '1'
    type = 'credential'
  }
}
