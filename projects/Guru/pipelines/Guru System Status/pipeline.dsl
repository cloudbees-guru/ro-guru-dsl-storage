
pipeline 'Guru System Status', {
  projectName = 'Guru'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }

  tag 'prod'
}
