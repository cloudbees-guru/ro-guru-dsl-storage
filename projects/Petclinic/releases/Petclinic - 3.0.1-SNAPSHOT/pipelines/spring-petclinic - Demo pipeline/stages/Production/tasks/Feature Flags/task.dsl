
task 'Feature Flags', {
  actualParameter = [
    'applicationId': '615c016ca7889d30e27333ad',
    'config': '/projects/Petclinic/pluginConfigurations/CloudBees Feature Management',
    'envName': 'Production',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'Petclinic'
  skippable = '0'
  stageSummaryParameters = '[{"name":"experiments","label":"experiments"}]'
  subpluginKey = 'EC-FeatureFlags'
  subprocedure = 'Get Experiments'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
