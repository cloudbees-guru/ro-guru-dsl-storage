
procedure 'Complete Top Level Release', {
  projectName = 'Guru'
  timeLimit = '0'

  formalParameter 'releaseName', defaultValue: '$[/myPipeline/releaseName]', {
    label = 'Release Name'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'projectName', defaultValue: '$[/myPipeline/projectName]', {
    label = 'Project Name'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }
}
