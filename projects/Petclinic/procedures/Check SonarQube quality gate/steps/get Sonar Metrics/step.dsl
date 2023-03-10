
step 'get Sonar Metrics', {
  projectName = 'Petclinic'
  subprocedure = 'Get Last SonarQube Metrics'
  subproject = '/plugins/EC-SonarQube/project'
  timeLimit = '0'
  actualParameter 'config', '/projects/Petclinic/pluginConfigurations/SonarQube'
  actualParameter 'resultFormat', 'propertysheet'
  actualParameter 'resultSonarProperty', '/myJob/getLastSonarMetrics'
  actualParameter 'sonarMetricsComplexity', 'all'
  actualParameter 'sonarMetricsDocumentation', 'all'
  actualParameter 'sonarMetricsDuplications', 'all'
  actualParameter 'sonarMetricsIssues', 'all'
  actualParameter 'sonarMetricsMaintainability', 'all'
  actualParameter 'sonarMetricsMetrics', 'all'
  actualParameter 'sonarMetricsQualityGates', 'all'
  actualParameter 'sonarMetricsReliability', 'all'
  actualParameter 'sonarMetricsSecurity', 'all'
  actualParameter 'sonarMetricsTests', 'all'
  actualParameter 'sonarProjectKey', '$[projectKey]'
  actualParameter 'sonarProjectName', '$[projectName]'
  actualParameter 'sonarProjectVersion', '$[projectVersion]'
  actualParameter 'sonarTaskId', ''
  actualParameter 'sonarTimeout', ''
}
