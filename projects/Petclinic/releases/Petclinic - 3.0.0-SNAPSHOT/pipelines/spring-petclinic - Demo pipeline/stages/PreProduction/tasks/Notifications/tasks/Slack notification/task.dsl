
task 'Slack notification', {
  actualParameter = [
    'config': '/projects/Petclinic/pluginConfigurations/team-sa-emea',
    'payload': '{"text":"Deployment OK in $[/myStage/name]"}',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  groupName = 'Notifications'
  insertRollingDeployManualStep = '0'
  projectName = 'Petclinic'
  skippable = '0'
  subpluginKey = 'EC-Slack'
  subprocedure = 'Send Realtime Message'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
