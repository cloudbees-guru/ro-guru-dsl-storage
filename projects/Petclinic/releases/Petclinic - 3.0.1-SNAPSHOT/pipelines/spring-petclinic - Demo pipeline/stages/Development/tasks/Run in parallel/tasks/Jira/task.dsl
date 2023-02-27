
task 'Jira', {
  actualParameter = [
    'config': '/projects/Petclinic/pluginConfigurations/Jira - cbdemo',
    'createLink': '1',
    'fieldsToSave': '',
    'filter': '10011',
    'jql': '',
    'maxResults': '100',
    'resultFormat': 'propertySheet',
    'resultProperty': '/myJob/getIssuesResult',
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
  stageSummaryParameters = '[{"name":"jiraids","label":"jiraids"},{"name":"jirareporturl","label":"jirareporturl"}]'
  subpluginKey = 'EC-JIRA'
  subprocedure = 'GetIssues'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
