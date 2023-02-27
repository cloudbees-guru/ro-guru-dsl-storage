
process 'Undeploy from MySQL via Ansible Tower', {
  description = 'Drops table, and undeploys the component'
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
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'Launch and Wait a Job Template'
    subproject = '/plugins/EC-AnsibleTower/project'
    useUtilityResource = '0'
  }
}
