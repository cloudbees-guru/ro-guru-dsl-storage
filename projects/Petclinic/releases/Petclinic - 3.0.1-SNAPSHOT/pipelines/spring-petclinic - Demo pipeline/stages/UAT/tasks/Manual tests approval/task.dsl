
task 'Manual tests approval', {
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  disableFailure = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  instruction = 'Approve when the Manual Tests have been run and are successful'
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_pipeline_manual_task_notification_template'
  projectName = 'Petclinic'
  skippable = '0'
  subproject = 'Petclinic'
  taskType = 'MANUAL'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
  approver = [
    'fgibelin',
    'SAUsers',
  ]
}
