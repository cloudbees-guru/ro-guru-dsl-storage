
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
    'sonarProjectVersion': '3.0.2-SNAPSHOT',
    'sonarTaskId': '',
    'sonarTimeout': '',
  ]
  groupName = 'Run in parallel'
  projectName = 'Petclinic'
  subpluginKey = 'EC-SonarQube'
  subprocedure = 'Get Last SonarQube Metrics'
  taskType = 'PLUGIN'
}
