
task 'Get core.cloudbees.guru version', {
  actualParameter = [
    'config': '/projects/Guru/pluginConfigurations/core.cloudbees.guru',
    'contentType': 'application/json',
    'cookieHeaderValue': '',
    'filePath': '',
    'formContent': '',
    'headers': '',
    'ignoreAuth': 'false',
    'pathUrl': '/cjoc/overallLoad/api/json',
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
  projectName = 'Guru'
  subpluginKey = 'EC-Rest'
  subprocedure = 'runRest'
  taskType = 'PLUGIN'
}
