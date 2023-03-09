
task 'Get cbcd-preview.cloudbees.guru version', {
  actualParameter = [
    'config': '/projects/Guru/pluginConfigurations/cbcd-preview.cloudbees.guru',
    'contentType': 'application/json',
    'cookieHeaderValue': '',
    'filePath': '',
    'formContent': '',
    'headers': '',
    'ignoreAuth': 'false',
    'pathUrl': '/server/versions',
    'postScriptContent': '',
    'postScriptOutput': '',
    'postScriptShell': '',
    'requestTimeout': '',
    'requestType': 'GET',
    'response_outpp': '',
    'targetFile': '',
    'writeToFile': 'false',
  ]
  errorHandling = 'continueOnError'
  groupName = 'Group 1'
  projectName = 'Guru'
  subpluginKey = 'EC-Rest'
  subprocedure = 'runRest'
  taskType = 'PLUGIN'
}
