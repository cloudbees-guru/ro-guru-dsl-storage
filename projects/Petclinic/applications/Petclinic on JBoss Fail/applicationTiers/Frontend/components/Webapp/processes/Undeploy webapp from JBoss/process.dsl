
process 'Undeploy webapp from JBoss', {
  description = 'Undeploys current application from JBoss'
  processType = 'UNDEPLOY'
  projectName = 'Petclinic'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

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
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'UndeployApp'
    subproject = '/plugins/EC-JBoss/project'
    useUtilityResource = '0'
    workingDirectory = '$[/myWorkspace/agentUnixPath]'
  }
}
