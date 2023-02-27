
task 'CI Build Infos', {
  actualParameter = [
    'build_number': '',
    'config_name': '/projects/Petclinic/pluginConfigurations/CloudBees CI - Shared Demos',
    'job_name': 'spring-petclinic/job/spring-petclinic-multibranch/job/main',
    'need_to_run_report': '1',
    'result_outpp': '/myJobStep/buildDetails',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  groupName = 'Run in parallel'
  insertRollingDeployManualStep = '0'
  projectName = 'Petclinic'
  resourceName = 'local'
  skippable = '0'
  stageSummaryParameters = '[{"name":"jenkinsjoburl","label":"jenkinsjoburl"},{"name":"jenkinsbuildurl","label":"jenkinsbuildurl"},{"name":"jenkinsbuildnumber","label":"jenkinsbuildnumber"}]'
  subpluginKey = 'EC-Jenkins'
  subprocedure = 'GetBuildDetails'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
