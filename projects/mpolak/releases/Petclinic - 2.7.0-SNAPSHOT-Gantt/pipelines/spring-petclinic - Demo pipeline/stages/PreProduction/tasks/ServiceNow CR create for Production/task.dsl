
task 'ServiceNow CR create for Production', {
  actualParameter = [
    'config_name': '/projects/Petclinic/pluginConfigurations/ServiceNow - ven01735.service-now.com',
    'content': '',
    'correlation_display': '',
    'correlation_id': '',
    'property_sheet': '/myPipelineRuntime/ServiceNow/$[/myStage/name]',
    'short_description': 'Change for Deployment of application "Demo Application"',
  ]
  projectName = 'mpolak'
  subpluginKey = 'EC-ServiceNow'
  subprocedure = 'CreateChangeRequest'
  taskType = 'PLUGIN'
}
