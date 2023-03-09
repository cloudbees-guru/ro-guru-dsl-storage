
task 'Manual Task', {
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_pipeline_manual_task_notification_template'
  projectName = 'mpolak'
  subproject = 'mpolak'
  taskType = 'MANUAL'
  approver = [
    'SDAAdmins',
  ]
}
