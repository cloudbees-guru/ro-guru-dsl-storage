
pipeline 'Feature Management demo with Petclinic', {
  description = ''
  disableMultipleActiveRuns = '1'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'Petclinic'
  skipStageMode = 'ENABLED'

  formalParameter 'FMenvironment', defaultValue: '', {
    expansionDeferred = '0'
    label = 'Which CBFM environment do you want to use ?'
    orderIndex = '1'
    propertyReference = '$[/myProject/myFMenvironments]'
    required = '1'
    type = 'select'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }

  tag 'petclinic'
}
