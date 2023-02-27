
task 'Automated tests gate', {
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  gateCondition = 'true'
  gateType = 'POST'
  insertRollingDeployManualStep = '0'
  projectName = 'Petclinic'
  skippable = '0'
  subproject = 'Petclinic'
  taskType = 'CONDITIONAL'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
