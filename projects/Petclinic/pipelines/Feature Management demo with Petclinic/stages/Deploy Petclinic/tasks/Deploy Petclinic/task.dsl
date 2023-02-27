
task 'Deploy Petclinic', {
  description = ''
  actualParameter = [
    'ec_enforceDependencies': '1',
    'ec_smartDeployOption': '0',
    'ec_stageArtifacts': '0',
    'FMenvironmentKey': '$[FMenvironment]',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  environmentName = 'Feature Management'
  environmentProjectName = 'Petclinic'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'Petclinic'
  resourceName = ''
  rollingDeployEnabled = '0'
  skippable = '0'
  subapplication = 'Petclinic Angular'
  subprocess = 'Deploy spring-petclinic-angular'
  subproject = 'Petclinic'
  taskProcessType = 'APPLICATION'
  taskType = 'PROCESS'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
