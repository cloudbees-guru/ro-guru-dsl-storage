
task 'SonarQube', {
  actualParameter = [
    'config': '/projects/Petclinic/pluginConfigurations/SonarQube',
    'resultFormat': 'propertysheet',
    'resultSonarProperty': '/myJob/getLastSonarMetrics',
    'sonarMetricsComplexity': 'all',
    'sonarMetricsDocumentation': 'all',
    'sonarMetricsDuplications': 'all',
    'sonarMetricsIssues': 'all',
    'sonarMetricsMaintainability': 'all',
    'sonarMetricsMetrics': 'all',
    'sonarMetricsQualityGates': 'all',
    'sonarMetricsReliability': 'all',
    'sonarMetricsSecurity': 'all',
    'sonarMetricsTests': 'all',
    'sonarProjectKey': 'org.springframework.samples:spring-petclinic',
    'sonarProjectName': 'petclinic',
    'sonarProjectVersion': '3.0.0-SNAPSHOT',
    'sonarTaskId': '',
    'sonarTimeout': '',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  groupName = 'Run in parallel'
  insertRollingDeployManualStep = '0'
  projectName = 'Petclinic'
  skippable = '0'
  subpluginKey = 'EC-SonarQube'
  subprocedure = 'Get Last SonarQube Metrics'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
