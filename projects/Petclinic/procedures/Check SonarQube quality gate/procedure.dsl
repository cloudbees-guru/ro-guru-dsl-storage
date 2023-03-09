
procedure 'Check SonarQube quality gate', {
  projectName = 'Petclinic'

  formalOutputParameter 'newParameter'

  formalParameter 'projectName', {
    label = 'Project name'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'projectKey', {
    label = 'Project key'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'projectVersion', {
    label = 'Project version'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }
}
