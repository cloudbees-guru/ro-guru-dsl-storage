
task 'Manually select Release', {
  actionLabelText = '{"completed":"Fortfahren","failed":"Abbruch"}'
  condition = '$[/javascript myReleaseRuntime.inputRequired == "FALSE"]'
  emailConfigName = 'sendgrid'
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_pipeline_manual_task_notification_template'
  projectName = 'jzarzycki'
  subproject = 'jzarzycki'
  taskType = 'MANUAL'
  approver = [
    '$[/myReleaseRuntime/responsibleUsers]',
  ]

  formalParameter 'release', defaultValue: '', {
    label = 'Release'
    orderIndex = '1'
    propertyReference = '$[/myPipelineRuntime/jiraids]'
    required = '1'
    type = 'select'
  }

  formalParameter 'operators', defaultValue: '', {
    label = 'Rechenzentrum'
    multiSelect = '1'
    options = [
      'r-it': 'r-it',
      'grz': 'grz',
      'rics': 'rics',
    ]
    orderIndex = '2'
    required = '1'
    type = 'select'
  }
}
