
step 'GetCR', {
  projectName = 'Petclinic'
  subprocedure = 'GetRecords_NextGen'
  subproject = '/plugins/EC-ServiceNow/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  actualParameter 'config_name', '/projects/Petclinic/pluginConfigurations/ServiceNow - ven01735.service-now.com'
  actualParameter 'display_values', 'all'
  actualParameter 'numbers', '''CHG0034726
CHG0034725'''
  actualParameter 'retrieval_type', 'number'
  actualParameter 'servicenow_ql', ''
  actualParameter 'table', 'change_request'
}
