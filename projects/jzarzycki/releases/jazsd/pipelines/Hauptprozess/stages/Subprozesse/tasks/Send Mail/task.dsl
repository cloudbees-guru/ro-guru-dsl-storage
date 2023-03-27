
task 'Send Mail', {
  actualParameter = [
    'advancedOption': '',
    'attachmentList': '',
    'bccList': '',
    'ccList': '',
    'configName': 'sendgrid',
    'headerList': '',
    'html': '''Release für $[/myReleaseRuntime/serviceName] in Version $[/myReleaseRuntime/stages/Init/tasks/Manually select Release/release] wurde gestartet auf folgenden Rechenzentren:
$[/myReleaseRuntime/stages/Init/tasks/Manually select Release/operators]
''',
    'htmlFile': '',
    'htmlType': 'text',
    'inlineList': '',
    'message': 'html',
    'multipartMode': 'default',
    'raw': '',
    'rawFile': '',
    'rawType': 'text',
    'subject': 'Release for $[/myReleaseRuntime/serviceName]',
    'text': '',
    'textFile': '',
    'textType': 'text',
    'toList': '$[/myPipelineRuntime/responsibleUsersMails]',
  ]
  projectName = 'jzarzycki'
  subpluginKey = 'EC-SendEmail'
  subprocedure = 'Send Email'
  taskType = 'PLUGIN'
}
