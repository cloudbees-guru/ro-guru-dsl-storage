
task 'Deploy', {
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  deployerRunType = 'serial'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'Petclinic'
  skippable = '0'
  subproject = 'Petclinic'
  taskType = 'DEPLOYER'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
