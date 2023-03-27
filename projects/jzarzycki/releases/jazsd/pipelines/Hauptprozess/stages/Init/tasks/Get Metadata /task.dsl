
task 'Get Metadata ', {
  description = '''Lesen der Metadaten für das übergebene Service aus einem 3rd-Party Tool
(z.B. Jira Insight); Ergebnis wird als JSON-Objekt zur Verfügung gestellt.'''
  actualParameter = [
    'config': '/projects/Guru/pluginConfigurations/mockapi.io CBDEMO',
    'contentType': 'text/plain',
    'cookieHeaderValue': '',
    'filePath': '',
    'formContent': '',
    'headers': '',
    'ignoreAuth': 'false',
    'pathUrl': 'releases',
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
  projectName = 'jzarzycki'
  subpluginKey = 'EC-Rest'
  subprocedure = 'runRest'
  taskType = 'PLUGIN'
}
