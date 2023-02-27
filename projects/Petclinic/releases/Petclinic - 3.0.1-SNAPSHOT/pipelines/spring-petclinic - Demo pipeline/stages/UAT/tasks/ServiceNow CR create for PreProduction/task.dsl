
task 'ServiceNow CR create for PreProduction', {
  actualParameter = [
    'config_name': '/projects/Petclinic/pluginConfigurations/ServiceNow - ven01735.service-now.com',
    'content': '{"description": "Deploy to PreProduction", "comments":"Please deploy the application to PreProduction"}',
    'correlation_display': 'ElectricFlow Pipeline Gate',
    'correlation_id': '',
    'property_sheet': '/myPipelineRuntime/ServiceNow/$[/myStage/name]',
    'short_description': 'Change for Deployment of application "Demo Application"',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'Petclinic'
  skippable = '0'
  subpluginKey = 'EC-ServiceNow'
  subprocedure = 'CreateChangeRequest'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
