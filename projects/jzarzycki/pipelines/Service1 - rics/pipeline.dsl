
pipeline 'Service1 - rics', {
  projectName = 'jzarzycki'

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
