
process 'Undeploy webapp from JBoss', {
  description = 'Undeploys current application from JBoss'
  processType = 'UNDEPLOY'
  projectName = 'Petclinic'
  smartUndeployEnabled = '0'

  processStep 'Undeploy', {
    actualParameter = [
      'additional_options': '',
      'allrelevantservergroups': '1',
      'appname': 'petclinic-$[petclinicVersion]-$[/myEnvironment]',
      'config': '/projects/Petclinic/pluginConfigurations/Wildfly',
      'keepcontent': '0',
      'scriptphysicalpath': '',
      'servergroups': '',
    ]
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'UndeployApp'
    subproject = '/plugins/EC-JBoss/project'
    workingDirectory = '$[/myWorkspace/agentUnixPath]'
  }
}
