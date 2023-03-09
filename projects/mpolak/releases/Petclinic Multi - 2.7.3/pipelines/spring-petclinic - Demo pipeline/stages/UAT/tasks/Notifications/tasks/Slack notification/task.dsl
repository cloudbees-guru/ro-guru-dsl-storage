
task 'Slack notification', {
  actualParameter = [
    'config': '/projects/Petclinic/pluginConfigurations/team-sa-emea',
    'payload': '{"text":"Deployment OK in $[/myStage/name]\\nPlease validate the deployment: https://ro.cloudbees.guru/flow/#pipeline-run/$[/myRelease/id]/$[/myReleaseRuntime/id]/release/$[/myRelease/id]"}',
  ]
  groupName = 'Notifications'
  projectName = 'mpolak'
  subpluginKey = 'EC-Slack'
  subprocedure = 'Send Realtime Message'
  taskType = 'PLUGIN'
}
