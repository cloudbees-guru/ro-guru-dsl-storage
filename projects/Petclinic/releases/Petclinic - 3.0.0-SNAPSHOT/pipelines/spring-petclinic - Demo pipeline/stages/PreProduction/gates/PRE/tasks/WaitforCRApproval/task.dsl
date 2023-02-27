
task 'WaitforCRApproval', {
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  gateType = 'PRE'
  insertRollingDeployManualStep = '0'
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_gate_task_notification_template'
  projectName = 'Petclinic'
  skippable = '0'
  subproject = 'Petclinic'
  taskType = 'APPROVAL'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
  approver = [
    'SAUsers',
    'ServiceNowChangeApprovers',
  ]
}
