
pipeline 'Feature Management demo with Petclinic', {
  disableMultipleActiveRuns = '1'
  projectName = 'Petclinic'

  formalParameter 'FMenvironment', defaultValue: '', {
    label = 'Which CBFM environment do you want to use ?'
    orderIndex = '1'
    propertyReference = '$[/myProject/myFMenvironments]'
    required = '1'
    type = 'select'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }

  tag 'petclinic'
}
