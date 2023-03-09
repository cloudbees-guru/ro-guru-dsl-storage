
task 'Jira', {
  actualParameter = [
    'config': '/projects/Petclinic/pluginConfigurations/Jira - cloudbees.atlassian.net',
    'createLink': '1',
    'fieldsToSave': '',
    'filter': '31912',
    'jql': '',
    'maxResults': '100',
    'resultFormat': 'propertySheet',
    'resultProperty': '/myJob/getIssuesResult',
  ]
  groupName = 'Run in parallel'
  projectName = 'Petclinic'
  stageSummaryParameters = '[{"name":"jiraids","label":"jiraids"},{"name":"jirareporturl","label":"jirareporturl"}]'
  subpluginKey = 'EC-JIRA'
  subprocedure = 'GetIssues'
  taskType = 'PLUGIN'
}
