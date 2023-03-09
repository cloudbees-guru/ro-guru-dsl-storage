
task 'Get ro.cloudbees.guru resources', {
  actualParameter = [
    'config': '/projects/Guru/pluginConfigurations/ro.cloudbees.guru',
    'contentType': 'application/json',
    'cookieHeaderValue': '',
    'filePath': '',
    'formContent': '',
    'headers': '',
    'ignoreAuth': 'false',
    'pathUrl': '/resources',
    'postScriptContent': '',
    'postScriptOutput': '',
    'postScriptShell': '',
    'requestTimeout': '',
    'requestType': 'GET',
    'response_outpp': '',
    'responseContentPolling': '',
    'targetFile': '',
    'writeToFile': 'false',
  ]
  errorHandling = 'continueOnError'
  groupName = 'Group 2'
  projectName = 'Guru'
  subpluginKey = 'EC-Rest'
  subprocedure = 'runRest'
  taskType = 'PLUGIN'
}
