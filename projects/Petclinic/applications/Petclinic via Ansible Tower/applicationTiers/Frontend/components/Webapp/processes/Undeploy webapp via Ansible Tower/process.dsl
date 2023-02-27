
process 'Undeploy webapp via Ansible Tower', {
  description = 'Undeploys current application from Tomcat'
  processType = 'UNDEPLOY'
  projectName = 'Petclinic'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  processStep 'Ansible Tower', {
    actualParameter = [
      'body': '',
      'checkInterval': '5',
      'config': '/projects/Petclinic/pluginConfigurations/AWX',
      'dependOnResult': '',
      'id': 'Petclinic',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'Launch and Wait a Job Template'
    subproject = '/plugins/EC-AnsibleTower/project'
    useUtilityResource = '0'
  }
}
