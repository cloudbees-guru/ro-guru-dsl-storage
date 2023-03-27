
task 'Get JIRA Releases', {
  actualParameter = [
    'config': '/projects/Petclinic/pluginConfigurations/Jira - cloudbees.atlassian.net',
    'createLink': '1',
    'jiraProjectKey': 'CBDEMO',
    'maxResults': '',
    'orderBy': '',
    'resultFormat': 'propertySheet',
    'resultProperty': '/myJob/getProjectVersionsResult',
    'showIssuesCount': '0',
    'versionNames': '',
    'versionStatus': 'all',
  ]
  projectName = 'jzarzycki'
  subpluginKey = 'EC-JIRA'
  subprocedure = 'GetProjectVersions'
  taskType = 'PLUGIN'
}
