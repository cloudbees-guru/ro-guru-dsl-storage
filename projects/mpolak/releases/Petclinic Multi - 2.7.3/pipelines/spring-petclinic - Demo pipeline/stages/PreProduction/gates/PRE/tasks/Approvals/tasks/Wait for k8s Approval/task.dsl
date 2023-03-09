
task 'Wait for k8s Approval', {
  gateType = 'PRE'
  groupName = 'Approvals'
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_gate_task_notification_template'
  projectName = 'mpolak'
  subproject = 'mpolak'
  taskType = 'APPROVAL'
  approver = [
    'SDAAdmins',
  ]
}
