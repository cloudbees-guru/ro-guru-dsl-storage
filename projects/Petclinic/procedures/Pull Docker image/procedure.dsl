
procedure 'Pull Docker image', {
  description = ''
  jobNameTemplate = ''
  projectName = 'Petclinic'
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'registry', {
    description = '''The URL of the Docker registry.
Example: registry.hub.docker.com'''
    expansionDeferred = '0'
    label = 'Docker registry'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'privateRegistry', {
    description = 'Check this box if the registry needs credentials to log in'
    checkedValue = 'true'
    expansionDeferred = '0'
    label = 'Private registry'
    orderIndex = '2'
    required = '1'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'credentials', {
    description = 'The credentials used to connect to the Docker registry'
    dependsOn = 'privateRegistry'
    expansionDeferred = '0'
    label = 'Docker registry credentials'
    orderIndex = '3'
    renderCondition = '${privateRegistry} == true'
    required = '0'
    type = 'credential'
  }

  formalParameter 'dockerImage', {
    description = '''The Docker image name.
Example: cloudbees/cloudbees-core-mm'''
    expansionDeferred = '0'
    label = 'Docker image'
    orderIndex = '4'
    required = '1'
    type = 'entry'
  }

  formalParameter 'dockerImageVersion', {
    description = '''The version/tag of the Docker image.
Example: 2.289.1.2'''
    expansionDeferred = '0'
    label = 'Docker Image Version'
    orderIndex = '5'
    required = '1'
    type = 'entry'
  }
}
