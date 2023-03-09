
step 'Approve CR', {
  projectName = 'Petclinic'
  subprocedure = 'UpdateRecord'
  subproject = '/plugins/EC-ServiceNow/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  actualParameter 'config_name', '/projects/Petclinic/pluginConfigurations/ServiceNow - ven01735.service-now.com'
  actualParameter 'content', '{"approval":"Approved"}'
  actualParameter 'property_sheet', '/myJobStep'
  actualParameter 'record_id', 'CHG0034725'
}
