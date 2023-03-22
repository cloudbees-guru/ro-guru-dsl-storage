
task 'ServiceNow CR create for PreProduction', {
  actualParameter = [
    'config_name': '/projects/Petclinic/pluginConfigurations/ServiceNow - ven01735.service-now.com',
    'content': '{"description": "Deploy to PreProduction", "comments":"Please deploy the application to PreProduction"}',
    'correlation_display': 'ElectricFlow Pipeline Gate',
    'correlation_id': '',
    'property_sheet': '/myPipelineRuntime/ServiceNow/$[/myStage/name]',
    'short_description': 'Change for Deployment of application "Demo Application"',
  ]
  projectName = 'Petclinic'
  subpluginKey = 'EC-ServiceNow'
  subprocedure = 'CreateChangeRequest'
  taskType = 'PLUGIN'
}
