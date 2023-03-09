
pipeline 'Fake DORA', {
  projectName = 'mpolak'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }

  tag 'DORA_Pipeline'
}
