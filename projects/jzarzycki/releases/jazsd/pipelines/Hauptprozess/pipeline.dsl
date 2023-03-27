
pipeline 'Hauptprozess', {
  projectName = 'jzarzycki'
  releaseName = 'jazsd'
  templatePipelineName = 'Hauptprozess'
  templatePipelineProjectName = 'jzarzycki'

  formalParameter 'serviceName', defaultValue: 'ELBA', {
    description = 'Name of the service to be released'
    label = 'Service Name'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'serviceVersion', defaultValue: '3.1', {
    description = 'Version number of the service to be released'
    label = 'Service Version'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
