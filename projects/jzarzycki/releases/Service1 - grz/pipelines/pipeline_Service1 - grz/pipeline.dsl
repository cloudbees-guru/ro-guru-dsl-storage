
pipeline 'pipeline_Service1 - grz', {
  projectName = 'jzarzycki'
  releaseName = 'Service1 - grz'

  formalParameter 'paketnummer', defaultValue: '', {
    label = 'Paketnummer'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
