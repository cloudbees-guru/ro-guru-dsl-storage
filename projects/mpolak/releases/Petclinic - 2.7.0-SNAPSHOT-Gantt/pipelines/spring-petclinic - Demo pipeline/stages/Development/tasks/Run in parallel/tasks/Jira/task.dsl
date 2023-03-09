
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
  groupName = 'Run in parallel'
  projectName = 'mpolak'
  stageSummaryParameters = '[{"name":"jiraids","label":"jiraids"},{"name":"jirareporturl","label":"jirareporturl"}]'
  subpluginKey = 'EC-JIRA'
  subprocedure = 'GetIssues'
  taskType = 'PLUGIN'
}
