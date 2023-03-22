
task 'Manual tests approval', {
  instruction = 'Approve when the Manual Tests have been run and are successful'
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_pipeline_manual_task_notification_template'
  projectName = 'Petclinic'
  subproject = 'Petclinic'
  taskType = 'MANUAL'
  approver = [
    'fgibelin',
    'SAUsers',
  ]
}
