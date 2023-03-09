
task 'Send notification', {
  actualParameter = [
    'advancedOption': '0',
    'attachmentList': '',
    'bccList': '',
    'ccList': '',
    'configName': 'pcherry@cloudbees.com',
    'headerList': '',
    'html': '$[/myPipelineRuntime/notificationMessage]',
    'htmlFile': '',
    'htmlType': 'text',
    'inlineList': '',
    'message': 'html',
    'multipartMode': 'default',
    'raw': '',
    'rawFile': '',
    'rawType': 'text',
    'subject': 'Guru CBCD System Status',
    'text': '$[/myPipelineRuntime/notificationMessage]',
    'textFile': '',
    'textType': 'text',
    'toList': 'pcherry@cloudbees.com;mpolak@cloudbees.com;jzarzycki@cloudbees.com',
  ]
  projectName = 'Guru'
  subpluginKey = 'EC-SendEmail'
  subprocedure = 'Send Email'
  taskType = 'PLUGIN'
}
