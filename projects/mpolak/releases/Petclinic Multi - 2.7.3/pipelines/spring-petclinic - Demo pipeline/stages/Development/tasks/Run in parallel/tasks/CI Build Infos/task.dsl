
task 'CI Build Infos', {
  actualParameter = [
    'build_number': '',
    'config_name': '/projects/Petclinic/pluginConfigurations/CloudBees CI - Shared Demos',
    'job_name': 'spring-petclinic/job/spring-petclinic-multibranch/job/main',
    'need_to_run_report': '1',
    'result_outpp': '/myJobStep/buildDetails',
  ]
  groupName = 'Run in parallel'
  projectName = 'mpolak'
  resourceName = 'local'
  stageSummaryParameters = '[{"name":"jenkinsjoburl","label":"jenkinsjoburl"},{"name":"jenkinsbuildurl","label":"jenkinsbuildurl"},{"name":"jenkinsbuildnumber","label":"jenkinsbuildnumber"}]'
  subpluginKey = 'EC-Jenkins'
  subprocedure = 'GetBuildDetails'
  taskType = 'PLUGIN'
}
