
procedure 'Check SonarQube quality gate', {
  description = ''
  jobNameTemplate = ''
  projectName = 'Petclinic'
  resourceName = ''
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalOutputParameter 'newParameter'

  formalParameter 'projectName', {
    expansionDeferred = '0'
    label = 'Project name'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'projectKey', {
    expansionDeferred = '0'
    label = 'Project key'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'projectVersion', {
    expansionDeferred = '0'
    label = 'Project version'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }
}
