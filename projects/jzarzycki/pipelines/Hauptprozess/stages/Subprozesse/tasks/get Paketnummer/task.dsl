
task 'get Paketnummer', {
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_pipeline_manual_task_notification_template'
  projectName = 'jzarzycki'
  subproject = 'jzarzycki'
  taskType = 'MANUAL'
  approver = [
    'jzarzycki',
    'mpolak',
  ]

  formalParameter 'paketnummer', defaultValue: '', {
    label = 'Paketnummer'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }
}
