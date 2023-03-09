
task 'Slack notification', {
  actualParameter = [
    'config': '/projects/Petclinic/pluginConfigurations/team-sa-emea',
    'payload': '{"text":"Deployment OK in $[/myStage/name]"}',
  ]
  groupName = 'Notifications'
  projectName = 'Petclinic'
  subpluginKey = 'EC-Slack'
  subprocedure = 'Send Realtime Message'
  taskType = 'PLUGIN'
}
