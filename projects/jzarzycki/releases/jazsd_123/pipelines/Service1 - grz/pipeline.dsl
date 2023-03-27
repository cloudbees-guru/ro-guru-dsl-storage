
pipeline 'Service1 - grz', {
  projectName = 'jzarzycki'
  releaseName = 'jazsd_123'
  templatePipelineName = 'Service1 - grz'
  templatePipelineProjectName = 'jzarzycki'

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
