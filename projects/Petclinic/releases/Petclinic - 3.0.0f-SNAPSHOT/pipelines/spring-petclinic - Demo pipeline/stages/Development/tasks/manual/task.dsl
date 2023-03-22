
task 'manual', {
  allowSkip = '1'
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_pipeline_manual_task_notification_template'
  projectName = 'Petclinic'
  subproject = 'Petclinic'
  taskType = 'MANUAL'
  approver = [
    'mpolak',
  ]
}
