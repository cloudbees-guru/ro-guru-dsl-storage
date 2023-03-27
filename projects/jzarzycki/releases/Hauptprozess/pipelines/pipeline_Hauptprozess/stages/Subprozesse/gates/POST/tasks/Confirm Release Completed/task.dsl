
task 'Confirm Release Completed', {
  gateType = 'POST'
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_gate_task_notification_template'
  projectName = 'jzarzycki'
  subproject = 'jzarzycki'
  taskType = 'APPROVAL'
  approver = [
    'jzarzycki',
    'mpolak',
  ]
}
