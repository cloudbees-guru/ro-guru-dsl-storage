
task 'Complete Release', {
  actualParameter = [
    'ReleaseName': '$[/myPipeline/releaseName]',
  ]
  gateType = 'POST'
  projectName = 'jzarzycki'
  subprocedure = 'Complete Top Level Release'
  subproject = 'Guru'
  taskType = 'PROCEDURE'
}
