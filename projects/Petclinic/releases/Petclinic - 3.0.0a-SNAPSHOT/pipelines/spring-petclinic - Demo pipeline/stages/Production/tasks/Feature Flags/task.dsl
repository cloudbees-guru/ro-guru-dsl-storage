
task 'Feature Flags', {
  actualParameter = [
    'applicationId': '615c016ca7889d30e27333ad',
    'config': '/projects/Petclinic/pluginConfigurations/CloudBees Feature Management',
    'envName': 'Production',
  ]
  projectName = 'Petclinic'
  stageSummaryParameters = '[{"name":"experiments","label":"experiments"}]'
  subpluginKey = 'EC-FeatureFlags'
  subprocedure = 'Get Experiments'
  taskType = 'PLUGIN'
}
