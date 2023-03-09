
process 'Undeploy', {
  applicationName = 'RollbackTest'
  exclusiveEnvironment = '0'
  processType = 'UNDEPLOY'
  projectName = 'mpolak'

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    type = 'checkbox'
  }
}
