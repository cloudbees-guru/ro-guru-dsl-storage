
task 'WaitforCRApproval', {
  gateType = 'PRE'
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_gate_task_notification_template'
  projectName = 'Petclinic'
  subproject = 'Petclinic'
  taskType = 'APPROVAL'
  approver = [
    'SAUsers',
    'ServiceNowChangeApprovers',
  ]
}
