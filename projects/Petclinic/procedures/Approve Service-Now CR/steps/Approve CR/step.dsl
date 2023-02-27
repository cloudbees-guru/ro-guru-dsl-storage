
step 'Approve CR', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  parallel = '0'
  precondition = ''
  projectName = 'Petclinic'
  releaseMode = 'none'
  resourceName = ''
  subprocedure = 'UpdateRecord'
  subproject = '/plugins/EC-ServiceNow/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  workspaceName = ''
  actualParameter 'config_name', '/projects/Petclinic/pluginConfigurations/ServiceNow - ven01735.service-now.com'
  actualParameter 'content', '{"approval":"Approved"}'
  actualParameter 'property_sheet', '/myJobStep'
  actualParameter 'record_id', 'CHG0034725'
}