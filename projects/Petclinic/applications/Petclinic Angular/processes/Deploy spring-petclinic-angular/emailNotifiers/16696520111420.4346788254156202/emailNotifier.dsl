
emailNotifier '16696520111420.4346788254156202', {
  configName = '$[/server/ec_deploy/ec_defaultEmailConfiguration]'
  destinations = 'NULL'
  eventType = 'onCompletion'
  formattingTemplate = '''Subject:$[/server/ec_deploy/ec_notifierTemplates/ec_default_process_run_success_template/subject]



$[/server/ec_deploy/ec_notifierTemplates/ec_default_process_run_success_template/body]'''
  userName = [
    'fgibelin',
  ]
}
