
process 'Deploy webapp via CloudBees CI', {
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  processStep 'CloudBees CI', {
    actualParameter = [
      'config_name': '/projects/Petclinic/pluginConfigurations/CloudBees CI - Shared Demos',
      'jenkins_enable_parallel_mode': '0',
      'job_name': 'spring-petclinic/job/Deploy%20Petclinic',
      'need_to_run_report': '1',
      'parameters': 'petclinicVersion=$[petclinicVersion],petclinicEnvironment=$[/myEnvironment]',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'RunAndMonitorBuild'
    subproject = '/plugins/EC-Jenkins/project'
    useUtilityResource = '0'
  }
}
